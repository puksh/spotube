import 'package:dio/dio.dart';
import 'package:hetu_script/hetu_script.dart';
import 'package:hetu_script/values.dart';
import 'package:spotube/models/metadata/metadata.dart';

class MetadataPluginArtistEndpoint {
  final Hetu hetu;
  MetadataPluginArtistEndpoint(this.hetu);

  HTInstance get hetuMetadataArtist =>
      (hetu.fetch("metadataPlugin") as HTInstance).memberGet("artist")
          as HTInstance;

  /// Invokes [method] with retry on HTTP 429 (rate-limit) responses.
  Future<dynamic> _invoke(
    String method, {
    List<dynamic>? positionalArgs,
    Map<String, dynamic>? namedArgs,
    int maxAttempts = 4,
  }) async {
    for (var attempt = 0; attempt < maxAttempts; attempt++) {
      try {
        return await hetuMetadataArtist.invoke(
          method,
          positionalArgs: positionalArgs ?? [],
          namedArgs: namedArgs ?? {},
        );
      } on DioException catch (e) {
        if (e.response?.statusCode == 429 && attempt < maxAttempts - 1) {
          await Future.delayed(Duration(seconds: 1 << attempt));
          continue;
        }
        rethrow;
      }
    }
  }

  Future<SpotubeFullArtistObject> getArtist(String id) async {
    final raw = await _invoke("getArtist", positionalArgs: [id]) as Map;

    return SpotubeFullArtistObject.fromJson(
      raw.cast<String, dynamic>(),
    );
  }

  Future<SpotubePaginationResponseObject<SpotubeFullTrackObject>> topTracks(
    String id, {
    int? offset,
    int? limit,
  }) async {
    final raw = await _invoke(
      "topTracks",
      positionalArgs: [id],
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return SpotubePaginationResponseObject<SpotubeFullTrackObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) => SpotubeFullTrackObject.fromJson(
        json.cast<String, dynamic>(),
      ),
    );
  }

  Future<SpotubePaginationResponseObject<SpotubeSimpleAlbumObject>> albums(
    String id, {
    int? offset,
    int? limit,
  }) async {
    final raw = await _invoke(
      "albums",
      positionalArgs: [id],
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return SpotubePaginationResponseObject<SpotubeSimpleAlbumObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) => SpotubeSimpleAlbumObject.fromJson(
        json.cast<String, dynamic>(),
      ),
    );
  }

  Future<void> save(List<String> ids) async {
    await _invoke("save", positionalArgs: [ids]);
  }

  Future<void> unsave(List<String> ids) async {
    await _invoke("unsave", positionalArgs: [ids]);
  }

  Future<SpotubePaginationResponseObject<SpotubeFullArtistObject>> related(
    String id, {
    int? offset,
    int? limit,
  }) async {
    final raw = await _invoke(
      "related",
      positionalArgs: [id],
      namedArgs: {
        "offset": offset,
        "limit": limit ?? 20,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return SpotubePaginationResponseObject<SpotubeFullArtistObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) => SpotubeFullArtistObject.fromJson(
        json.cast<String, dynamic>(),
      ),
    );
  }
}
