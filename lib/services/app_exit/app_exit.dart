import 'dart:async';

import 'package:flutter/services.dart';
import 'package:spotube/provider/discord_provider.dart';
import 'package:spotube/services/audio_player/audio_player.dart';
import 'package:spotube/services/audio_services/audio_services.dart';
import 'package:spotube/services/logger/logger.dart';
import 'package:spotube/services/notifications/background_close_notification.dart';
import 'package:spotube/services/wm_tools/wm_tools.dart';
import 'package:spotube/utils/platform.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

class AppExitService {
  static Completer<void>? _shutdownCompleter;

  static bool get isShuttingDown => _shutdownCompleter != null;

  static Future<void> requestExit({
    String reason = 'unknown',
    bool forceDesktopWindowClose = false,
  }) {
    if (!kIsDesktop) {
      return SystemNavigator.pop();
    }

    final activeShutdown = _shutdownCompleter;
    if (activeShutdown != null) {
      AppLogger.log.d(
        'Shutdown already in progress, ignoring duplicate request from $reason',
      );
      return activeShutdown.future;
    }

    final completer = Completer<void>();
    _shutdownCompleter = completer;

    Future<void>(() async {
      AppLogger.log.i('Desktop shutdown requested from $reason');

      await _runShutdownStep(
        'dismiss background close notification',
        dismissBackgroundCloseNotification,
      );

      await _runShutdownStep(
        'remove close prevention',
        () => windowManager.setPreventClose(false),
      );

      await _runShutdownStep(
        'dispose window manager observers',
        WindowManagerTools.dispose,
      );

      await _runShutdownStep(
        'destroy system tray icon',
        () => trayManager.destroy(),
      );

      await _runShutdownStep(
        'shutdown discord integration',
        DiscordNotifier.shutdownCurrent,
      );

      await _runShutdownStep(
        'shutdown audio integrations',
        AudioServices.disposeCurrent,
      );

      await _runShutdownStep(
        'stop audio playback',
        () async {
          if (audioPlayer.hasSource || audioPlayer.isPlaying) {
            await audioPlayer.stop();
          }
        },
      );

      await _runShutdownStep(
        'dispose audio player',
        () => audioPlayer.dispose(),
      );

      await _runShutdownStep(
        forceDesktopWindowClose
            ? 'destroy application window'
            : 'close application window',
        () => forceDesktopWindowClose
            ? windowManager.destroy()
            : windowManager.close(),
      );
    }).then(
      (_) => completer.complete(),
      onError: (error, stackTrace) {
        AppLogger.reportError(error, stackTrace, 'Unhandled shutdown failure');
        completer.completeError(error, stackTrace);
      },
    ).whenComplete(() {
      _shutdownCompleter = null;
    });

    return completer.future;
  }

  static Future<void> _runShutdownStep(
    String label,
    FutureOr<void> Function() action,
  ) async {
    try {
      await action();
      AppLogger.log.d('Shutdown step completed: $label');
    } catch (error, stackTrace) {
      AppLogger.reportError(error, stackTrace, 'Shutdown step failed: $label');
    }
  }
}
