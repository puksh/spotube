import 'package:audio_service/audio_service.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotube/collections/env.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/audio_player/audio_player.dart';
import 'package:spotube/services/audio_player/audio_player.dart';
import 'package:spotube/services/audio_services/mobile_audio_service.dart';
import 'package:spotube/services/audio_services/windows_audio_service.dart';
import 'package:spotube/utils/platform.dart';

class AudioServices with WidgetsBindingObserver {
  static AudioServices? _current;

  final MobileAudioService? mobile;
  final WindowsAudioService? smtc;
  bool _disposed = false;
  Future<void>? _disposeFuture;

  AudioServices(this.mobile, this.smtc) {
    WidgetsBinding.instance.addObserver(this);
  }

  static AudioServices? get current => _current;

  static Future<AudioServices> create(
    Ref ref,
    AudioPlayerNotifier playback,
  ) async {
    final mobile = kIsMobile || kIsMacOS || kIsLinux
        ? await AudioService.init(
            builder: () => MobileAudioService(playback),
            config: AudioServiceConfig(
              androidNotificationChannelId: switch ((
                kIsLinux,
                Env.releaseChannel
              )) {
                (true, _) => "spotube",
                (_, ReleaseChannel.stable) => "oss.krtirtho.spotube",
                (_, ReleaseChannel.nightly) => "oss.krtirtho.spotube.nightly",
              },
              androidNotificationChannelName: 'Spotube',
              androidNotificationOngoing: false,
              androidStopForegroundOnPause: false,
              androidNotificationChannelDescription: "Spotube Media Controls",
            ),
          )
        : null;
    final smtc = kIsWindows ? WindowsAudioService(ref, playback) : null;
    final instance = AudioServices(mobile, smtc);
    _current = instance;
    return instance;
  }

  Future<void> addTrack(SpotubeTrackObject track) async {
    await smtc?.addTrack(track);
    mobile?.addItem(MediaItem(
      id: track.id,
      album: track.album.name,
      title: track.name,
      artist: track.artists.asString(),
      duration: Duration(milliseconds: track.durationMs),
      artUri: (track.album.images).asUri(
        placeholder: ImagePlaceholder.albumArt,
      ),
      playable: true,
    ));
  }

  void activateSession() {
    mobile?.session?.setActive(true);
  }

  void deactivateSession() {
    mobile?.session?.setActive(false);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
        deactivateSession();
        audioPlayer.pause();
        break;
      default:
        break;
    }
  }

  Future<void> dispose() {
    return _disposeFuture ??= _disposeInternal();
  }

  static Future<void> disposeCurrent() async {
    final current = _current;
    if (current == null) return;

    await current.dispose();
    if (identical(_current, current)) {
      _current = null;
    }
  }

  Future<void> _disposeInternal() async {
    if (_disposed) return;
    _disposed = true;

    WidgetsBinding.instance.removeObserver(this);
    await smtc?.dispose();
  }
}
