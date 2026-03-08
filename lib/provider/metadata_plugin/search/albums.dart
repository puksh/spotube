import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/provider/metadata_plugin/utils/common.dart';
import 'package:spotube/provider/metadata_plugin/utils/family_paginated.dart';

class MetadataPluginSearchAlbumsNotifier
    extends
        AutoDisposeFamilyPaginatedAsyncNotifier<
          SpotubeSimpleAlbumObject,
          String
        > {
  MetadataPluginSearchAlbumsNotifier(this._arg);
  final String _arg;
  @override
  String get arg => _arg;

  @override
  fetch(offset, limit) async {
    if (arg.isEmpty) {
      return SpotubePaginationResponseObject<SpotubeSimpleAlbumObject>(
        limit: limit,
        nextOffset: null,
        total: 0,
        items: [],
        hasMore: false,
      );
    }

    final res = await (await metadataPlugin).search.albums(
      arg,
      offset: offset,
      limit: limit,
    );

    return res;
  }

  @override
  build() async {
    ref.cacheFor();

    ref.watch(metadataPluginProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginSearchAlbumsProvider = AsyncNotifierProvider.autoDispose
    .family<
      MetadataPluginSearchAlbumsNotifier,
      SpotubePaginationResponseObject<SpotubeSimpleAlbumObject>,
      String
    >((arg) => MetadataPluginSearchAlbumsNotifier(arg));
