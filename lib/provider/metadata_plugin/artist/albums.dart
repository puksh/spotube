import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/provider/metadata_plugin/utils/family_paginated.dart';

class MetadataPluginArtistAlbumNotifier
    extends FamilyPaginatedAsyncNotifier<SpotubeSimpleAlbumObject, String> {
  MetadataPluginArtistAlbumNotifier(this._arg);
  final String _arg;
  @override
  String get arg => _arg;
  @override
  Future<SpotubePaginationResponseObject<SpotubeSimpleAlbumObject>> fetch(
    int offset,
    int limit,
  ) async {
    return await (await metadataPlugin).artist.albums(
      arg,
      limit: limit,
      offset: offset,
    );
  }

  @override
  build() async {
    ref.watch(metadataPluginProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginArtistAlbumsProvider =
    AsyncNotifierProvider.family<
      MetadataPluginArtistAlbumNotifier,
      SpotubePaginationResponseObject<SpotubeSimpleAlbumObject>,
      String
    >((arg) => MetadataPluginArtistAlbumNotifier(arg));
