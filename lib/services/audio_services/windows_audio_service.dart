import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smtc_windows/smtc_windows.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/audio_player/audio_player.dart';
import 'package:spotube/services/audio_player/audio_player.dart';
import 'package:spotube/services/audio_player/playback_state.dart';
import 'package:spotube/services/logger/logger.dart';

class WindowsAudioService {
  final SMTCWindows smtc;
  final Ref ref;
  final AudioPlayerNotifier audioPlayerNotifier;

  final subscriptions = <StreamSubscription>[];
  bool _disposed = false;
  Future<void>? _disposeFuture;

  WindowsAudioService(this.ref, this.audioPlayerNotifier)
      : smtc = SMTCWindows(enabled: false) {
    unawaited(smtc.setPlaybackStatus(PlaybackStatus.stopped));
    final buttonStream = smtc.buttonPressStream.listen((event) async {
      if (_disposed) return;

      try {
        switch (event) {
          case PressedButton.play:
            await audioPlayer.resume();
            break;
          case PressedButton.pause:
            await audioPlayer.pause();
            break;
          case PressedButton.next:
            await audioPlayer.skipToNext();
            break;
          case PressedButton.previous:
            await audioPlayer.skipToPrevious();
            break;
          case PressedButton.stop:
            await audioPlayerNotifier.stop();
            break;
          default:
            break;
        }
      } catch (e, stack) {
        AppLogger.reportError(e, stack, 'Windows media controls action failed');
      }
    });

    final playerStateStream =
        audioPlayer.playerStateStream.listen((state) async {
      if (_disposed) return;

      try {
        switch (state) {
          case AudioPlaybackState.playing:
            await smtc.setPlaybackStatus(PlaybackStatus.playing);
            break;
          case AudioPlaybackState.paused:
            await smtc.setPlaybackStatus(PlaybackStatus.paused);
            break;
          case AudioPlaybackState.stopped:
            await smtc.setPlaybackStatus(PlaybackStatus.stopped);
            break;
          case AudioPlaybackState.completed:
            await smtc.setPlaybackStatus(PlaybackStatus.changing);
            break;
          default:
            break;
        }
      } catch (e, stack) {
        AppLogger.reportError(
            e, stack, 'Windows media controls state update failed');
      }
    });

    final positionStream = audioPlayer.positionStream.listen((pos) async {
      if (_disposed) return;

      try {
        await smtc.setPosition(pos);
      } catch (e, stack) {
        AppLogger.reportError(
            e, stack, 'Windows media controls position update failed');
      }
    });

    final durationStream = audioPlayer.durationStream.listen((duration) async {
      if (_disposed) return;

      try {
        await smtc.setEndTime(duration);
      } catch (e, stack) {
        AppLogger.reportError(
            e, stack, 'Windows media controls duration update failed');
      }
    });

    subscriptions.addAll([
      buttonStream,
      playerStateStream,
      positionStream,
      durationStream,
    ]);
  }

  Future<void> addTrack(SpotubeTrackObject track) async {
    if (_disposed) return;

    if (!smtc.enabled) {
      await smtc.enableSmtc();
    }
    await smtc.updateMetadata(
      MusicMetadata(
        title: track.name,
        albumArtist: track.artists.firstOrNull?.name ?? "Unknown",
        artist: track.artists.asString(),
        album: track.album.name,
        thumbnail: (track.album.images).asUrlString(
          placeholder: ImagePlaceholder.albumArt,
        ),
      ),
    );
  }

  Future<void> dispose() {
    return _disposeFuture ??= _disposeInternal();
  }

  Future<void> _disposeInternal() async {
    if (_disposed) return;
    _disposed = true;

    for (final element in subscriptions) {
      await element.cancel();
    }
    subscriptions.clear();

    try {
      await smtc.setPlaybackStatus(PlaybackStatus.stopped);
    } catch (_) {}

    try {
      await smtc.clearMetadata();
    } catch (_) {}

    try {
      if (smtc.enabled) {
        await smtc.disableSmtc();
      }
    } catch (_) {}

    try {
      await smtc.dispose();
    } catch (e, stack) {
      AppLogger.reportError(e, stack, 'Windows media controls dispose failed');
    }
  }
}
