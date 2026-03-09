import 'dart:async';

import 'package:flutter_discord_rpc/flutter_discord_rpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/audio_player/audio_player.dart';
import 'package:spotube/provider/user_preferences/user_preferences_provider.dart';
import 'package:spotube/services/audio_player/audio_player.dart';
import 'package:spotube/services/logger/logger.dart';
import 'package:spotube/utils/platform.dart';

class DiscordNotifier extends AsyncNotifier<void> {
  static DiscordNotifier? _current;

  final List<StreamSubscription> _subscriptions = [];
  Future<void>? _shutdownFuture;

  @override
  FutureOr<void> build() async {
    if (!kIsDesktop) return;

    _current = this;

    final enabled = ref.watch(
      userPreferencesProvider.select((s) => s.discordPresence && kIsDesktop),
    );

    var lastPosition = audioPlayer.position;

    _subscriptions.addAll([
      FlutterDiscordRPC.instance.isConnectedStream.listen((connected) async {
        try {
          final playback = ref.read(audioPlayerProvider);
          if (connected && playback.activeTrack != null) {
            await updatePresence(playback.activeTrack!);
          }
        } catch (e, stack) {
          AppLogger.reportError(e, stack);
        }
      }),
      audioPlayer.playerStateStream.listen((state) async {
        try {
          final playback = ref.read(audioPlayerProvider);
          if (playback.activeTrack == null) return;

          await updatePresence(ref.read(audioPlayerProvider).activeTrack!);
        } catch (e, stack) {
          AppLogger.reportError(e, stack);
        }
      }),
      audioPlayer.positionStream.listen((position) async {
        try {
          final playback = ref.read(audioPlayerProvider);
          if (playback.activeTrack != null) {
            final diff = position.inMilliseconds - lastPosition.inMilliseconds;
            if (diff > 500 || diff < -500) {
              await updatePresence(ref.read(audioPlayerProvider).activeTrack!);
            }
          }
          lastPosition = position;
        } catch (e, stack) {
          AppLogger.reportError(e, stack);
        }
      }),
    ]);

    ref.onDispose(() {
      if (identical(_current, this)) {
        _current = null;
      }

      for (final subscription in _subscriptions) {
        subscription.cancel();
      }
      _subscriptions.clear();
    });

    if (!enabled && FlutterDiscordRPC.instance.isConnected) {
      await clear();
      await close();
    } else if (enabled) {
      await FlutterDiscordRPC.instance.connect(autoRetry: true);
    }
  }

  Future<void> updatePresence(SpotubeTrackObject track) async {
    if (!kIsDesktop) return;
    if (FlutterDiscordRPC.instance.isConnected == false) return;
    final artistNames = track.artists.asString();
    final isPlaying = audioPlayer.isPlaying;
    final position = audioPlayer.position;

    await FlutterDiscordRPC.instance.setActivity(
      activity: RPCActivity(
        details: track.name,
        state: artistNames,
        assets: RPCAssets(
          largeImage:
              track.album.images.firstOrNull?.url ?? "spotube-logo-foreground",
          largeText: track.album.name,
          smallImage: "spotube-logo-foreground",
          smallText: "Spotube",
        ),
        buttons: [
          RPCButton(label: "Listen on Spotube", url: track.externalUri),
        ],
        timestamps: RPCTimestamps(
          start: isPlaying
              ? DateTime.now().millisecondsSinceEpoch - position.inMilliseconds
              : null,
        ),
        activityType: ActivityType.listening,
      ),
    );
  }

  Future<void> clear() async {
    if (!kIsDesktop) return;
    if (!FlutterDiscordRPC.instance.isConnected) return;
    await FlutterDiscordRPC.instance.clearActivity();
  }

  Future<void> close() async {
    if (!kIsDesktop) return;
    if (!FlutterDiscordRPC.instance.isConnected) return;
    await FlutterDiscordRPC.instance.disconnect();
  }

  Future<void> shutdown() {
    return _shutdownFuture ??= _shutdownInternal();
  }

  static Future<void> shutdownCurrent() async {
    await _current?.shutdown();
  }

  Future<void> _shutdownInternal() async {
    for (final subscription in _subscriptions) {
      await subscription.cancel();
    }
    _subscriptions.clear();

    try {
      await clear();
    } catch (e, stack) {
      AppLogger.reportError(
        e,
        stack,
        'Discord clear activity failed during shutdown',
      );
    }

    try {
      await close();
    } catch (e, stack) {
      AppLogger.reportError(
        e,
        stack,
        'Discord disconnect failed during shutdown',
      );
    }

    try {
      await FlutterDiscordRPC.instance.dispose();
    } catch (e, stack) {
      AppLogger.reportError(e, stack, 'Discord dispose failed during shutdown');
    }
  }
}

final discordProvider = AsyncNotifierProvider<DiscordNotifier, void>(
  () => DiscordNotifier(),
);
