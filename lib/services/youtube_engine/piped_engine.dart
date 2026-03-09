// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:piped_client/piped_client.dart';
import 'package:spotube/services/logger/logger.dart';
import 'package:spotube/services/youtube_engine/youtube_engine.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class PipedEngine implements YouTubeEngine {
  static const _timeout = Duration(seconds: 15);

  // Well-known public Piped API instances; cycled through on server errors.
  static const _instances = [
    "https://pipedapi.kavin.rocks",
    "https://pipedapi.leptons.xyz",
    "https://pipedapi.nosebs.ru",
    "https://pipedapi.tokhmi.xyz",
    "https://pipedapi.coldforge.xyz",
  ];

  // Shared across instances so a discovered bad instance stays skipped.
  static int _instanceIndex = 0;

  PipedClient _client;

  PipedEngine() : _client = _buildClient();

  static PipedClient _buildClient() {
    final client = PipedClient(instance: _instances[_instanceIndex]);
    client.client.options
      ..connectTimeout = _timeout
      ..receiveTimeout = _timeout;
    return client;
  }

  void _rotateInstance() {
    _instanceIndex = (_instanceIndex + 1) % _instances.length;
    _client.client.close();
    _client = _buildClient();
    AppLogger.log.w(
      "Piped: rotating to instance ${_instances[_instanceIndex]}",
    );
  }

  bool _isRetryableError(DioException e) {
    final status = e.response?.statusCode;
    return (status != null && status >= 500) ||
        e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.connectionError;
  }

  Future<T> _withFallback<T>(Future<T> Function() fn) async {
    // Try every instance at most once before giving up.
    final totalInstances = _instances.length;
    for (var attempt = 0; attempt < totalInstances; attempt++) {
      try {
        return await fn();
      } on DioException catch (e) {
        if (_isRetryableError(e) && attempt < totalInstances - 1) {
          _rotateInstance();
          continue;
        }
        rethrow;
      } on TypeError catch (e) {
        // Instance returned a non-JSON body (e.g. HTML error page).
        AppLogger.log.w("Piped: bad response body ($e), rotating instance");
        if (attempt < totalInstances - 1) {
          _rotateInstance();
          continue;
        }
        rethrow;
      }
    }
    // Unreachable, but satisfies the type system.
    throw StateError("All Piped instances exhausted");
  }

  static bool get isAvailableForPlatform => true;

  static Future<bool> isInstalled() async => true;

  Video _videoFromStream(PipedStreamResponse response) {
    return Video(
      VideoId(response.id),
      response.title,
      response.uploader,
      ChannelId(response.uploaderUrl),
      null,
      response.uploadedDate,
      null,
      response.description,
      response.duration,
      ThumbnailSet(response.id),
      [],
      Engagement(response.views, response.likes, response.dislikes),
      response.livestream,
    );
  }

  Video _videoFromSearchItem(PipedSearchItemStream item) {
    return Video(
      VideoId(item.id),
      item.title,
      item.uploaderName,
      ChannelId(item.uploaderUrl ?? ""),
      null,
      item.uploadedDate,
      null,
      item.shortDescription ?? "",
      item.duration,
      ThumbnailSet(item.id),
      [],
      Engagement(item.views, null, null),
      false,
    );
  }

  StreamManifest _manifestFromResponse(PipedStreamResponse response) {
    final audioStreams = response.audioStreams
        .where((s) => !s.videoOnly)
        .map(
          (s) => AudioOnlyStreamInfo(
            VideoId(response.id),
            0,
            Uri.parse(s.url),
            StreamContainer.parse(
              s.format == PipedAudioStreamFormat.m4a ? "mp4" : "webm",
            ),
            FileSize.unknown,
            Bitrate(s.bitrate),
            s.codec,
            s.quality,
            [],
            MediaType.parse(s.mimeType),
            null,
          ),
        );

    return StreamManifest(audioStreams);
  }

  @override
  Future<StreamManifest> getStreamManifest(String videoId) =>
      _withFallback(() async {
        final response = await _client.streams(videoId);
        return _manifestFromResponse(response);
      });

  @override
  Future<Video> getVideo(String videoId) => _withFallback(() async {
    final response = await _client.streams(videoId);
    return _videoFromStream(response);
  });

  @override
  Future<(Video, StreamManifest)> getVideoWithStreamInfo(String videoId) =>
      _withFallback(() async {
        final response = await _client.streams(videoId);
        return (_videoFromStream(response), _manifestFromResponse(response));
      });

  @override
  Future<List<Video>> searchVideos(String query) => _withFallback(() async {
    final result = await _client.search(query, PipedFilter.videos);
    return result.items
        .whereType<PipedSearchItemStream>()
        .where((item) => !item.isShort)
        .map(_videoFromSearchItem)
        .toList();
  });

  @override
  void dispose() {
    _client.client.close();
  }
}
