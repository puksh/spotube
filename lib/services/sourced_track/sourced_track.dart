import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:spotube/models/database/database.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/models/playback/track_sources.dart';
import 'package:spotube/provider/database/database.dart';
import 'package:spotube/provider/metadata_plugin/audio_source/quality_presets.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/provider/user_preferences/user_preferences_provider.dart';
import 'package:spotube/services/dio/dio.dart';
import 'package:spotube/services/logger/logger.dart';
import 'package:spotube/services/metadata/errors/exceptions.dart';
import 'package:spotube/services/metadata/metadata.dart';
import 'package:spotube/services/youtube_engine/newpipe_engine.dart';
import 'package:spotube/services/youtube_engine/youtube_explode_engine.dart';
import 'package:spotube/services/youtube_engine/youtube_engine.dart';
import 'package:spotube/services/youtube_engine/yt_dlp_engine.dart';

import 'package:spotube/services/sourced_track/exceptions.dart';
import 'package:spotube/utils/service_utils.dart';

final officialMusicRegex = RegExp(
  r"official\s(video|audio|music\svideo|lyric\svideo|visualizer)",
  caseSensitive: false,
);

class SourcedTrack extends BasicSourcedTrack {
  final Ref ref;

  SourcedTrack({
    required this.ref,
    required super.info,
    required super.query,
    required super.source,
    required super.siblings,
    required super.sources,
  });

  static Future<SourcedTrack> fetchFromTrack({
    required SpotubeFullTrackObject query,
    required Ref ref,
  }) async {
    final audioSource = await ref.read(audioSourcePluginProvider.future);
    final audioSourceConfig = await ref.read(
      metadataPluginsProvider.selectAsync(
        (data) => data.defaultAudioSourcePluginConfig,
      ),
    );
    if (audioSource == null || audioSourceConfig == null) {
      throw MetadataPluginException.noDefaultAudioSourcePlugin();
    }

    final database = ref.read(databaseProvider);
    final cachedSource =
        await (database.select(database.sourceMatchTable)
              ..where(
                (s) =>
                    s.trackId.equals(query.id) &
                    s.sourceType.equals(audioSourceConfig.slug),
              )
              ..limit(1)
              ..orderBy([
                (s) => OrderingTerm(
                  expression: s.createdAt,
                  mode: OrderingMode.desc,
                ),
              ]))
            .get()
            .then((s) => s.firstOrNull);

    if (cachedSource == null) {
      final siblings = await fetchSiblings(ref: ref, query: query);
      if (siblings.isEmpty) {
        throw TrackNotFoundError(query);
      }

      await database
          .into(database.sourceMatchTable)
          .insert(
            SourceMatchTableCompanion.insert(
              trackId: query.id,
              sourceInfo: Value(jsonEncode(siblings.first)),
              sourceType: audioSourceConfig.slug,
            ),
          );

      final manifest = await audioSource.audioSource.streams(siblings.first);

      return SourcedTrack(
        ref: ref,
        siblings: siblings.skip(1).toList(),
        info: siblings.first,
        source: audioSourceConfig.slug,
        sources: manifest,
        query: query,
      );
    }
    final item = SpotubeAudioSourceMatchObject.fromJson(
      jsonDecode(cachedSource.sourceInfo),
    );

    // If the audio file is already fully cached on disk, skip the network
    // stream-resolution call and serve straight from the disk cache.
    final prefs = ref.read(userPreferencesProvider);
    if (prefs.cacheMusic) {
      final presetState = ref.read(audioSourcePresetsProvider);
      final preset = presetState.presets.elementAtOrNull(
        presetState.selectedStreamingContainerIndex,
      );
      if (preset != null) {
        final cacheDir = await UserPreferencesNotifier.getMusicCacheDir();
        final filename = ServiceUtils.sanitizeFilename(
          '${query.name} - ${query.artists.map((a) => a.name).join(",")} (${item.id}).${preset.getFileExtension()}',
        );
        final cacheFile = File(join(cacheDir, filename));
        if (await cacheFile.exists() && await cacheFile.length() > 0) {
          AppLogger.log.i(
            "${query.name}: disk cache hit (${await cacheFile.length()} bytes), skipping stream resolution",
          );
          return SourcedTrack(
            ref: ref,
            siblings: [],
            sources: const [],
            info: item,
            query: query,
            source: audioSourceConfig.slug,
          );
        }
      }
    }

    final manifest = await audioSource.audioSource.streams(item);

    final sourcedTrack = SourcedTrack(
      ref: ref,
      siblings: [],
      sources: manifest,
      info: item,
      query: query,
      source: audioSourceConfig.slug,
    );

    AppLogger.log.i("${query.name}: ${sourcedTrack.url}");

    return sourcedTrack;
  }

  static List<SpotubeAudioSourceMatchObject> rankResults(
    List<SpotubeAudioSourceMatchObject> results,
    SpotubeFullTrackObject track,
  ) {
    return results
        .map((sibling) {
          int score = 0;

          for (final artist in track.artists) {
            final isSameChannelArtist = sibling.artists.any(
              (a) => a.toLowerCase() == artist.name.toLowerCase(),
            );

            if (isSameChannelArtist) {
              score += 1;
            }

            final titleContainsArtist = sibling.title.toLowerCase().contains(
              artist.name.toLowerCase(),
            );

            if (titleContainsArtist) {
              score += 1;
            }
          }

          final titleContainsTrackName = sibling.title.toLowerCase().contains(
            track.name.toLowerCase(),
          );

          final hasOfficialFlag = officialMusicRegex.hasMatch(
            sibling.title.toLowerCase(),
          );

          if (titleContainsTrackName) {
            score += 3;
          }

          if (hasOfficialFlag) {
            score += 1;
          }

          if (hasOfficialFlag && titleContainsTrackName) {
            score += 2;
          }

          return (sibling: sibling, score: score);
        })
        .sorted((a, b) => b.score.compareTo(a.score))
        .map((e) => e.sibling)
        .toList();
  }

  /// Filters [results] to those whose duration is within [_maxDurationDrift]
  /// of [trackDuration]. Results with an unknown (zero) duration are kept.
  static const _maxDurationDrift = Duration(seconds: 15);

  static List<SpotubeAudioSourceMatchObject> _filterByDuration(
    List<SpotubeAudioSourceMatchObject> results,
    Duration trackDuration,
  ) {
    if (trackDuration == Duration.zero) return results;
    return results.where((r) {
      if (r.duration == Duration.zero) return true;
      return (r.duration - trackDuration).abs() <= _maxDurationDrift;
    }).toList();
  }

  /// Tries the remaining available YouTube engines in order and returns the
  /// first batch of duration-matching, ranked results. Returns an empty list
  /// if every engine also fails to find a match.
  static Future<List<SpotubeAudioSourceMatchObject>> _tryFallbackEngines(
    Ref ref,
    SpotubeFullTrackObject query,
    Duration trackDuration,
  ) async {
    final audioSourceConfig = await ref.read(
      metadataPluginsProvider.selectAsync(
        (data) => data.defaultAudioSourcePluginConfig,
      ),
    );
    if (audioSourceConfig == null) return [];

    final pluginsNotifier = ref.read(metadataPluginsProvider.notifier);
    final pluginByteCode = await pluginsNotifier.getPluginByteCode(
      audioSourceConfig,
    );

    final currentEngineMode = ref.read(
      userPreferencesProvider.select((p) => p.youtubeClientEngine),
    );

    final fallbackEngines = <YouTubeEngine>[];
    if (currentEngineMode != YoutubeClientEngine.youtubeExplode) {
      fallbackEngines.add(YouTubeExplodeEngine());
    }
    if (currentEngineMode != YoutubeClientEngine.ytDlp &&
        YtDlpEngine.isAvailableForPlatform) {
      fallbackEngines.add(YtDlpEngine());
    }
    if (currentEngineMode != YoutubeClientEngine.newPipe &&
        NewPipeEngine.isAvailableForPlatform) {
      fallbackEngines.add(NewPipeEngine());
    }

    for (final engine in fallbackEngines) {
      try {
        AppLogger.log.i(
          "${query.name}: no match found, retrying with ${engine.runtimeType}",
        );
        final fallbackPlugin = await MetadataPlugin.create(
          engine,
          audioSourceConfig,
          pluginByteCode,
        );
        final results = _filterByDuration(
          await fallbackPlugin.audioSource.matches(query),
          trackDuration,
        );
        if (results.isEmpty) continue;
        final ranked = ServiceUtils.onlyContainsEnglish(query.name)
            ? results
            : rankResults(results, query);
        if (ranked.isNotEmpty) return ranked;
      } catch (e) {
        AppLogger.log.e(
          "${query.name}: fallback engine ${engine.runtimeType} error: $e",
        );
      }
    }

    return [];
  }

  static Future<List<SpotubeAudioSourceMatchObject>> fetchSiblings({
    required SpotubeFullTrackObject query,
    required Ref ref,
  }) async {
    final audioSource = await ref.read(audioSourcePluginProvider.future);

    if (audioSource == null) {
      throw MetadataPluginException.noDefaultAudioSourcePlugin();
    }

    final trackDuration = Duration(milliseconds: query.durationMs);
    final rawResults = await audioSource.audioSource.matches(query);
    final durationFiltered = _filterByDuration(rawResults, trackDuration);

    if (rawResults.length != durationFiltered.length) {
      AppLogger.log.i(
        "${query.name}: removed ${rawResults.length - durationFiltered.length} "
        "result(s) outside ±${_maxDurationDrift.inSeconds}s duration window",
      );
    }

    final videoResults = <SpotubeAudioSourceMatchObject>[];

    if (ServiceUtils.onlyContainsEnglish(query.name)) {
      videoResults.addAll(durationFiltered);
    } else {
      videoResults.addAll(rankResults(durationFiltered, query));
    }

    // For non-ASCII track names, fall back to other engines when the primary
    // engine produced no duration-matching results (e.g. unavailable JP track).
    if (videoResults.isEmpty && !ServiceUtils.onlyContainsEnglish(query.name)) {
      AppLogger.log.i(
        "${query.name}: no duration-matching results from primary engine, "
        "trying fallback engines",
      );
      final fallback = await _tryFallbackEngines(ref, query, trackDuration);
      videoResults.addAll(fallback);
    }

    return videoResults.toSet().toList();
  }

  Future<SourcedTrack> copyWithSibling() async {
    if (siblings.isNotEmpty) {
      return this;
    }
    final fetchedSiblings = await fetchSiblings(ref: ref, query: query);

    return SourcedTrack(
      ref: ref,
      siblings: fetchedSiblings.where((s) => s.id != info.id).toList(),
      source: source,
      sources: sources,
      info: info,
      query: query,
    );
  }

  Future<SourcedTrack?> swapWithSibling(
    SpotubeAudioSourceMatchObject sibling,
  ) async {
    if (sibling.id == info.id) {
      return null;
    }

    final audioSource = await ref.read(audioSourcePluginProvider.future);
    final audioSourceConfig = await ref.read(
      metadataPluginsProvider.selectAsync(
        (data) => data.defaultAudioSourcePluginConfig,
      ),
    );
    if (audioSource == null || audioSourceConfig == null) {
      throw MetadataPluginException.noDefaultAudioSourcePlugin();
    }

    // a sibling source that was fetched from the search results
    final isStepSibling = siblings.none((s) => s.id == sibling.id);

    final newSourceInfo = isStepSibling
        ? sibling
        : siblings.firstWhere((s) => s.id == sibling.id);

    final newSiblings = siblings.where((s) => s.id != sibling.id).toList()
      ..insert(0, info);

    final manifest = await audioSource.audioSource.streams(newSourceInfo);

    final database = ref.read(databaseProvider);

    // Delete the old Entry
    await (database.sourceMatchTable.delete()..where(
          (table) =>
              table.trackId.equals(query.id) &
              table.sourceType.equals(audioSourceConfig.slug),
        ))
        .go();

    await database
        .into(database.sourceMatchTable)
        .insert(
          SourceMatchTableCompanion.insert(
            trackId: query.id,
            sourceInfo: Value(jsonEncode(sibling)),
            sourceType: audioSourceConfig.slug,
            createdAt: Value(DateTime.now()),
          ),
          mode: InsertMode.replace,
        );

    return SourcedTrack(
      ref: ref,
      source: source,
      siblings: newSiblings,
      sources: manifest,
      info: newSourceInfo,
      query: query,
    );
  }

  Future<SourcedTrack?> swapWithSiblingOfIndex(int index) {
    return swapWithSibling(siblings[index]);
  }

  Future<SourcedTrack> refreshStream() async {
    final audioSource = await ref.read(audioSourcePluginProvider.future);
    final audioSourceConfig = await ref.read(
      metadataPluginsProvider.selectAsync(
        (data) => data.defaultAudioSourcePluginConfig,
      ),
    );
    if (audioSource == null || audioSourceConfig == null) {
      throw MetadataPluginException.noDefaultAudioSourcePlugin();
    }

    List<SpotubeAudioSourceStreamObject> validStreams = [];

    final stringBuffer = StringBuffer();
    for (final source in sources) {
      final res = await globalDio.head(
        source.url,
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      stringBuffer.writeln(
        "[${query.id}] ${res.statusCode} ${source.container} ${source.codec} ${source.bitrate}",
      );

      if (res.statusCode! < 400) {
        validStreams.add(source);
      }
    }

    AppLogger.log.d(stringBuffer.toString());

    if (validStreams.isEmpty) {
      validStreams = await audioSource.audioSource.streams(info);
    }

    final sourcedTrack = SourcedTrack(
      ref: ref,
      siblings: siblings,
      source: source,
      sources: validStreams,
      info: info,
      query: query,
    );

    AppLogger.log.i("Refreshing ${query.name}: ${sourcedTrack.url}");

    return sourcedTrack;
  }

  String? get url {
    final preferences = ref.read(audioSourcePresetsProvider);

    return getUrlOfQuality(
      preferences.presets[preferences.selectedStreamingContainerIndex],
      preferences.selectedStreamingQualityIndex,
    );
  }

  /// Returns the URL of the track based on the codec and quality preferences.
  /// If an exact match is not found, it will return the closest match based on
  /// the user's audio quality preference.
  ///
  /// If no sources match the codec, it will return the first or last source
  /// based on the user's audio quality preference.
  SpotubeAudioSourceStreamObject? getStreamOfQuality(
    SpotubeAudioSourceContainerPreset preset,
    int qualityIndex,
  ) {
    if (sources.isEmpty) return null;

    final quality = preset.qualities[qualityIndex];

    final exactMatch = sources.firstWhereOrNull((source) {
      if (source.container != preset.name) return false;

      if (quality case SpotubeAudioLosslessContainerQuality()) {
        return source.sampleRate == quality.sampleRate &&
            source.bitDepth == quality.bitDepth;
      } else {
        return source.bitrate ==
            (quality as SpotubeAudioLossyContainerQuality).bitrate;
      }
    });

    if (exactMatch != null) {
      return exactMatch;
    }

    // Find the preset with closest quality to the supplied quality
    return sources
        .where((source) {
          return source.container == preset.name;
        })
        .reduce((prev, curr) {
          if (quality is SpotubeAudioLosslessContainerQuality) {
            final prevDiff =
                ((prev.sampleRate ?? 0) - quality.sampleRate).abs() +
                ((prev.bitDepth ?? 0) - quality.bitDepth).abs();
            final currDiff =
                ((curr.sampleRate ?? 0) - quality.sampleRate).abs() +
                ((curr.bitDepth ?? 0) - quality.bitDepth).abs();
            return currDiff < prevDiff ? curr : prev;
          } else {
            final prevDiff =
                ((prev.bitrate ?? 0) -
                        (quality as SpotubeAudioLossyContainerQuality).bitrate)
                    .abs();
            final currDiff = ((curr.bitrate ?? 0) - quality.bitrate).abs();
            return currDiff < prevDiff ? curr : prev;
          }
        });
  }

  String? getUrlOfQuality(
    SpotubeAudioSourceContainerPreset preset,
    int qualityIndex,
  ) {
    return getStreamOfQuality(preset, qualityIndex)?.url;
  }

  SpotubeAudioSourceContainerPreset? get qualityPreset {
    final presetState = ref.read(audioSourcePresetsProvider);
    return presetState.presets.elementAtOrNull(
      presetState.selectedStreamingContainerIndex,
    );
  }
}
