import 'dart:async';

import 'package:local_notifier/local_notifier.dart';
import 'package:spotube/services/app_exit/app_exit.dart';
import 'package:spotube/services/kv_store/kv_store.dart';
import 'package:spotube/utils/platform.dart';

final backgroundCloseNotification = !kIsDesktop
    ? null
    : (LocalNotification(
        title: 'Spotube',
        body: 'Running in background. Minimized to System Tray',
        actions: [
          LocalNotificationAction(text: 'Close The App'),
        ],
      )..onClickAction = (value) {
        unawaited(
          dismissBackgroundCloseNotification().whenComplete(
            () => AppExitService.requestExit(
              reason: 'background notification action',
              forceDesktopWindowClose: true,
            ),
          ),
        );
      });

Future<void> showBackgroundCloseNotification() async {
  final notification = backgroundCloseNotification;
  if (notification == null) return;
  if (KVStoreService.backgroundNotificationShown) return;

  await notification.show();
  await KVStoreService.setBackgroundNotificationShown(true);
}

Future<void> dismissBackgroundCloseNotification() async {
  final notification = backgroundCloseNotification;
  if (notification == null) return;

  await notification.destroy();
}
