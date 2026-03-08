import 'dart:async';
import 'dart:io';

import 'package:hooks_riverpod/legacy.dart';
import 'package:spotube/services/app_exit/app_exit.dart';
import 'package:spotube/utils/platform.dart';

class SleepTimerNotifier extends StateNotifier<Duration?> {
  SleepTimerNotifier() : super(null);

  Timer? _timer;

  void setSleepTimer(Duration duration) {
    state = duration;

    _timer?.cancel();

    _timer = Timer(duration, () async {
      //! This can be a reason  for app termination in iOS AppStore
      if (kIsDesktop) {
        await AppExitService.requestExit(
          reason: 'sleep timer elapsed',
          forceDesktopWindowClose: true,
        );
        return;
      }

      exit(0);
    });
  }

  void cancelSleepTimer() {
    state = null;
    _timer?.cancel();
  }
}

final sleepTimerProvider = StateNotifierProvider<SleepTimerNotifier, Duration?>(
  (ref) => SleepTimerNotifier(),
);
