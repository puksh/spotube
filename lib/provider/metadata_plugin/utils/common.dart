import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';

import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/services/metadata/errors/exceptions.dart';
import 'package:spotube/services/metadata/metadata.dart';

extension PaginationExtension<T> on AsyncValue<T> {
  bool get isLoadingNextPage => false;
}

mixin MetadataPluginMixin<K>
    on AsyncNotifier<SpotubePaginationResponseObject<K>> {
  Future<MetadataPlugin> get metadataPlugin async {
    final plugin = await ref.read(metadataPluginProvider.future);

    if (plugin == null) {
      throw MetadataPluginException.noDefaultMetadataPlugin();
    }

    return plugin;
  }
}

extension CacheFor on Ref {
  // When invoked keeps your provider alive for [duration]
  void cacheFor([Duration duration = const Duration(minutes: 5)]) {
    final link = keepAlive();
    final timer = Timer(duration, () => link.close());
    onDispose(() => timer.cancel());
  }
}
