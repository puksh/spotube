import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/provider/audio_player/audio_player.dart';
import 'package:spotube/services/audio_player/audio_player.dart';

({
  double progressStatic,
  Duration position,
  Duration duration,
  double bufferProgress,
})
useProgress(WidgetRef ref) {
  final activeTrack = ref.watch(
    audioPlayerProvider.select((s) => s.activeTrack),
  );

  final bufferProgress =
      useStream(audioPlayer.bufferedPositionStream).data?.inSeconds ?? 0;

  final duration = useState(Duration.zero);
  final position = useState(Duration.zero);

  // Tracks whether this is the first render (to avoid resetting position on
  // initial mount when a track is already mid-play).
  final isFirstMount = useRef(true);

  final sliderMax = duration.value.inSeconds;
  final sliderValue = position.value.inSeconds;

  // When the active track changes, immediately reset position to 0 and apply
  // the cached Spotify duration so the UI shows meaningful values before the
  // audio engine has finished loading the stream.
  useEffect(() {
    final cachedMs = activeTrack?.durationMs ?? 0;

    if (isFirstMount.value) {
      isFirstMount.value = false;
      // On first mount: keep the player's actual position, only fill in the
      // cached duration if the audio engine hasn't reported one yet.
      if (audioPlayer.duration == Duration.zero && cachedMs > 0) {
        duration.value = Duration(milliseconds: cachedMs);
      }
      return null;
    }

    // Track changed: show 0:00 progress and cached duration immediately.
    position.value = Duration.zero;
    if (audioPlayer.duration == Duration.zero && cachedMs > 0) {
      duration.value = Duration(milliseconds: cachedMs);
    }
    return null;
  }, [activeTrack?.id]);

  useEffect(() {
    final playerDuration = audioPlayer.duration;
    if (playerDuration != Duration.zero) {
      duration.value = playerDuration;
    } else {
      final cachedMs = activeTrack?.durationMs ?? 0;
      if (cachedMs > 0) duration.value = Duration(milliseconds: cachedMs);
    }

    final durationSubscription = audioPlayer.durationStream.listen((event) {
      // Only accept non-zero durations from the engine; when the engine
      // emits zero during a track transition we keep the cached value.
      if (event != Duration.zero) {
        duration.value = event;
      }
    });

    position.value = audioPlayer.position;

    var lastPosition = position.value;

    // audioPlayer.positionStream is fired every 200ms and only 1s delay is
    // enough. Thus only update the position if the difference is more than 1s
    // Reduces CPU usage
    final positionSubscription = audioPlayer.positionStream.listen((event) {
      final diff = event.inMilliseconds - lastPosition.inMilliseconds;
      if (event.inMilliseconds > 1000 && diff < 1000 && diff > 0) return;

      lastPosition = event;
      position.value = event;
    });

    return () {
      positionSubscription.cancel();
      durationSubscription.cancel();
    };
  }, []);

  return (
    progressStatic: sliderMax == 0 || sliderValue > sliderMax
        ? 0
        : sliderValue / sliderMax,
    position: position.value,
    duration: duration.value,
    bufferProgress: sliderMax == 0 || bufferProgress > sliderMax
        ? 0
        : bufferProgress / sliderMax,
  );
}
