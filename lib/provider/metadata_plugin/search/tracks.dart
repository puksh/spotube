import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/provider/metadata_plugin/utils/common.dart';
import 'package:spotube/provider/metadata_plugin/utils/family_paginated.dart';

class MetadataPluginSearchTracksNotifier
    extends
        AutoDisposeFamilyPaginatedAsyncNotifier<
          SpotubeFullTrackObject,
          String
        > {
  MetadataPluginSearchTracksNotifier(this._arg);
  final String _arg;
  @override
  String get arg => _arg;

  @override
  fetch(offset, limit) async {
    if (arg.isEmpty) {
      return SpotubePaginationResponseObject<SpotubeFullTrackObject>(
        limit: limit,
        nextOffset: null,
        total: 0,
        items: [],
        hasMore: false,
      );
    }

    final tracks = await (await metadataPlugin).search.tracks(
      arg,
      offset: offset,
      limit: limit,
    );

    return tracks;
  }

  @override
  build() async {
    ref.cacheFor();

    ref.watch(metadataPluginProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginSearchTracksProvider = AsyncNotifierProvider.autoDispose
    .family<
      MetadataPluginSearchTracksNotifier,
      SpotubePaginationResponseObject<SpotubeFullTrackObject>,
      String
    >((arg) => MetadataPluginSearchTracksNotifier(arg));
