import 'dart:async';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:genius_api_unofficial/genius_api_unofficial.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/legacy.dart';
import 'package:html/dom.dart' hide Text;
import 'package:html/parser.dart' as html_parser;
import 'package:lrc/lrc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:spotube/collections/env.dart';
import 'package:spotube/models/database/database.dart';
import 'package:spotube/models/lyrics.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/database/database.dart';
import 'package:spotube/services/dio/dio.dart';
import 'package:spotube/services/logger/logger.dart';

// Cached once per app lifetime to avoid repeated platform channel calls
Future<PackageInfo>? _packageInfoFuture;

/// Converts a Genius lyrics [container] element to plain text.
///
/// Removes header/meta elements and hidden accessibility placeholders from the
/// DOM before extracting text, so that only lyric content remains.
String _geniusHtmlToText(Element container) {
  // Remove header blocks flagged by Genius (title, contributors, etc.)
  for (final el in container.querySelectorAll(
    '[data-exclude-from-selection]',
  )) {
    el.remove();
  }
  // Remove invisible accessibility placeholder elements
  for (final el in container.querySelectorAll('[style]')) {
    final style = el.attributes['style'] ?? '';
    if (style.contains('opacity:0') || style.contains('display:none')) {
      el.remove();
    }
  }
  // Convert <br> tags to newlines, then strip all remaining HTML tags
  final rawHtml = container.innerHtml.replaceAll(
    RegExp(r'<br\s*/?>', caseSensitive: false),
    '\n',
  );
  final stripped = rawHtml.replaceAll(RegExp(r'<[^>]*>'), '');
  // Decode HTML entities (e.g. &amp; → &) by re-parsing as a plain text doc
  return html_parser.parse(stripped).body?.text?.trim() ?? stripped.trim();
}

class SyncedLyricsNotifier extends AsyncNotifier<SubtitleSimple> {
  SyncedLyricsNotifier(this._arg);
  final SpotubeTrackObject? _arg;
  SpotubeTrackObject? get arg => _arg;

  SpotubeTrackObject get _track => arg!;

  /// Lyrics credits: [lrclib.net](https://lrclib.net) and their contributors
  /// Thanks for their generous public API
  Future<SubtitleSimple> getLRCLibLyrics() async {
    final packageInfo = await (_packageInfoFuture ??=
        PackageInfo.fromPlatform());

    final Response<dynamic> res;
    try {
      res = await globalDio.getUri(
        Uri(
          scheme: "https",
          host: "lrclib.net",
          path: "/api/get",
          queryParameters: {
            "artist_name": _track.artists.first.name,
            "track_name": _track.name,
            "album_name": _track.album.name,
            if (_track.durationMs > 0)
              "duration": (_track.durationMs / 1000).toInt().toString(),
          },
        ),
        options: Options(
          headers: {
            "User-Agent":
                "Spotube v${packageInfo.version} (https://github.com/KRTirtho/spotube)",
          },
          responseType: ResponseType.json,
        ),
      );
    } on DioException catch (e) {
      // 404 = track not found on LRCLib — return empty so Genius fallback runs
      if (e.response?.statusCode == 404) {
        return SubtitleSimple(
          lyrics: [],
          name: _track.name,
          uri: e.requestOptions.uri,
          rating: 0,
          provider: "LRCLib",
        );
      }
      rethrow;
    }

    if (res.statusCode != 200) {
      return SubtitleSimple(
        lyrics: [],
        name: _track.name,
        uri: res.realUri,
        rating: 0,
        provider: "LRCLib",
      );
    }

    final json = res.data as Map<String, dynamic>;

    final syncedLyricsRaw = json["syncedLyrics"] as String?;
    final syncedLyrics = syncedLyricsRaw?.isNotEmpty == true
        ? Lrc.parse(
            syncedLyricsRaw!,
          ).lyrics.map(LyricSlice.fromLrcLine).toList()
        : null;

    if (syncedLyrics?.isNotEmpty == true) {
      return SubtitleSimple(
        lyrics: syncedLyrics!,
        name: _track.name,
        uri: res.realUri,
        rating: 100,
        provider: "LRCLib",
      );
    }

    final plainLyrics = (json["plainLyrics"] as String)
        .split("\n")
        .map((line) => LyricSlice(text: line, time: Duration.zero))
        .toList();

    return SubtitleSimple(
      lyrics: plainLyrics,
      name: _track.name,
      uri: res.realUri,
      rating: 0,
      provider: "LRCLib",
    );
  }

  /// Fallback plain lyrics from Genius via web scrape.
  /// Returns null if no token configured, no hit found, or scraping fails.
  Future<SubtitleSimple?> getGeniusLyrics() async {
    final token = Env.geniusClientAccessToken;
    if (token.isEmpty) return null;

    try {
      final api = GeniusApiRaw(accessToken: token);
      final query = '${_track.name} ${_track.artists.first.name}';
      final res = await api.getSearch(query);
      final hits = (res.data?['hits'] as List?)?.cast<Map>() ?? [];
      if (hits.isEmpty) return null;

      final trackNameLower = _track.name.toLowerCase();
      final artistLower = _track.artists.first.name.toLowerCase();

      final hit = hits.firstWhere((h) {
        final fullTitle = ((h['result'] as Map)['full_title'] as String)
            .toLowerCase();
        return fullTitle.contains(trackNameLower) &&
            fullTitle.contains(artistLower);
      }, orElse: () => hits.first);

      final url = Uri.parse((hit['result'] as Map)['url'] as String);

      final response = await globalDio.getUri(
        url,
        options: Options(responseType: ResponseType.plain),
      );
      final Document document = html_parser.parse(response.data);
      String? lyrics = document.querySelector('div.lyrics')?.text.trim();
      if (lyrics == null || lyrics.isEmpty) {
        // Try the stable data attribute first, then fall back to class-based
        final containers =
            document
                .querySelectorAll('div[data-lyrics-container="true"]')
                .toList()
              ..addAll(
                document.querySelectorAll('div[class*="Lyrics__Container"]'),
              );
        if (containers.isNotEmpty) {
          final buffer = StringBuffer();
          for (final element in containers) {
            final text = _geniusHtmlToText(element);
            if (text.isNotEmpty) {
              buffer
                ..write(text)
                ..write('\n\n');
            }
          }
          lyrics = buffer.toString().trim();
        }
      }

      if (lyrics == null || lyrics.isEmpty) return null;

      // Safety net: strip any HTML tags that may have leaked through
      if (lyrics.contains('<')) {
        lyrics = lyrics
            .replaceAll(RegExp(r'<[^>]*>'), '')
            .replaceAll(RegExp(r'\s*\n\s*\n\s*'), '\n\n')
            .trim();
      }

      if (lyrics.isEmpty) return null;

      // Genius shows this text for instrumentals — treat as no lyrics
      if (lyrics.toLowerCase().contains('this song is an instrumental')) {
        return null;
      }

      return SubtitleSimple(
        lyrics: lyrics
            .split('\n')
            .map((line) => LyricSlice(text: line, time: Duration.zero))
            .toList(),
        name: _track.name,
        uri: url,
        rating: 0,
        provider: 'Genius',
      );
    } catch (e, stack) {
      AppLogger.reportError(e, stack);
      return null;
    }
  }

  @override
  FutureOr<SubtitleSimple> build() async {
    final track = arg;
    try {
      final database = ref.watch(databaseProvider);

      if (track == null) {
        throw "No track currently";
      }

      final cachedLyrics =
          await (database.select(database.lyricsTable)
                ..where((tbl) => tbl.trackId.equals(track.id)))
              .map((row) => row.data)
              .getSingleOrNull();

      // Treat HTML-contaminated cache entries as invalid
      final cacheIsHtml =
          cachedLyrics != null &&
          cachedLyrics.lyrics.any((l) => l.text.contains('<'));

      SubtitleSimple? lyrics = (cacheIsHtml) ? null : cachedLyrics;

      if (lyrics == null ||
          lyrics.lyrics.isEmpty ||
          lyrics.lyrics.length <= 5) {
        lyrics = await getLRCLibLyrics();
      }

      // Fallback to Genius for plain lyrics when LRCLib has nothing
      if (lyrics.lyrics.isEmpty) {
        final geniusLyrics = await getGeniusLyrics();
        if (geniusLyrics != null && geniusLyrics.lyrics.isNotEmpty) {
          lyrics = geniusLyrics;
        }
      }

      if (lyrics.lyrics.isEmpty) {
        throw Exception("Unable to find lyrics");
      }

      if (cachedLyrics == null || cachedLyrics.lyrics.isEmpty || cacheIsHtml) {
        await database
            .into(database.lyricsTable)
            .insert(
              LyricsTableCompanion.insert(trackId: track.id, data: lyrics),
              mode: InsertMode.replace,
            );
      }

      return lyrics;
    } catch (e, stackTrace) {
      AppLogger.reportError(e, stackTrace);
      rethrow;
    }
  }
}

final syncedLyricsDelayProvider = StateProvider<int>((ref) => 0);

final syncedLyricsProvider =
    AsyncNotifierProvider.family<
      SyncedLyricsNotifier,
      SubtitleSimple,
      SpotubeTrackObject?
    >((arg) => SyncedLyricsNotifier(arg));

final syncedLyricsMapProvider = FutureProvider.family((
  ref,
  SpotubeTrackObject? track,
) async {
  final syncedLyrics = await ref.watch(syncedLyricsProvider(track).future);

  final isStaticLyrics = syncedLyrics.lyrics.every(
    (l) => l.time == Duration.zero,
  );

  final lyricsMap = {
    for (final lyric in syncedLyrics.lyrics) lyric.time.inSeconds: lyric.text,
  };

  return (static: isStaticLyrics, lyricsMap: lyricsMap);
});
