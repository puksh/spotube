import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/hooks/configurators/use_window_listener.dart';
import 'package:spotube/models/database/database.dart';
import 'package:spotube/provider/user_preferences/user_preferences_provider.dart';
import 'package:spotube/services/app_exit/app_exit.dart';
import 'package:spotube/services/notifications/background_close_notification.dart';
import 'package:spotube/utils/platform.dart';
import 'package:window_manager/window_manager.dart';

void useCloseBehavior(WidgetRef ref) {
  useWindowListener(
    onWindowClose: () async {
      if (AppExitService.isShuttingDown) {
        return;
      }

      final preferences = ref.read(userPreferencesProvider);
      if (preferences.closeBehavior == CloseBehavior.minimizeToTray) {
        await windowManager.hide();
        await showBackgroundCloseNotification();
      } else {
        await AppExitService.requestExit(
          reason: 'window close request',
        );
      }
    },
  );
}
