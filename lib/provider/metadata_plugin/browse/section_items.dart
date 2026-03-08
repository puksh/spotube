import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/core/auth.dart';
import 'package:spotube/provider/metadata_plugin/utils/family_paginated.dart';

class MetadataPluginBrowseSectionItemsNotifier
    extends FamilyPaginatedAsyncNotifier<Object, String> {
  MetadataPluginBrowseSectionItemsNotifier(this._arg);
  final String _arg;
  @override
  String get arg => _arg;
  @override
  Future<SpotubePaginationResponseObject<Object>> fetch(
    int offset,
    int limit,
  ) async {
    return await (await metadataPlugin).browse.sectionItems(
      arg,
      limit: limit,
      offset: offset,
    );
  }

  @override
  build() async {
    ref.watch(metadataPluginAuthenticatedProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginBrowseSectionItemsProvider =
    AsyncNotifierProvider.family<
      MetadataPluginBrowseSectionItemsNotifier,
      SpotubePaginationResponseObject<Object>,
      String
    >((arg) => MetadataPluginBrowseSectionItemsNotifier(arg));
