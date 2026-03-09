import 'package:collection/collection.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:shadcn_flutter/shadcn_flutter_extension.dart';
import 'package:spotube/collections/spotube_icons.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/modules/lyrics/zoom_controls.dart';
import 'package:spotube/components/shimmers/shimmer_lyrics.dart';
import 'package:spotube/extensions/constrains.dart';
import 'package:spotube/extensions/context.dart';

import 'package:spotube/provider/audio_player/audio_player.dart';
import 'package:spotube/provider/lyrics/synced.dart';

class PlainLyrics extends HookConsumerWidget {
  final PaletteColor palette;
  final bool? isModal;
  final int defaultTextZoom;
  const PlainLyrics({
    required this.palette,
    this.isModal,
    this.defaultTextZoom = 100,
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final playlist = ref.watch(audioPlayerProvider);
    final lyricsQuery = ref.watch(syncedLyricsProvider(playlist.activeTrack));
    final mediaQuery = MediaQuery.of(context);
    final typography = Theme.of(context).typography;

    final textZoomLevel = useState<int>(defaultTextZoom);

    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (isModal != true)
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        playlist.activeTrack?.name ?? "",
                        style:
                            (mediaQuery.mdAndUp ? typography.h3 : typography.h4)
                                .copyWith(color: palette.titleTextColor),
                      ),
                    ),
                    const Gap(4),
                    Center(
                      child: Text(
                        playlist.activeTrack?.artists.asString() ?? "",
                        style:
                            (mediaQuery.mdAndUp
                                    ? typography.h4
                                    : typography.large)
                                .copyWith(color: palette.bodyTextColor),
                      ),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Builder(
                      builder: (context) {
                        if (lyricsQuery.isLoading || lyricsQuery.isRefreshing) {
                          return const ShimmerLyrics();
                        } else if (lyricsQuery.hasError) {
                          return Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  context.l10n.no_lyrics_available,
                                  style: typography.large.copyWith(
                                    color: palette.bodyTextColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const Gap(26),
                                const Icon(SpotubeIcons.noLyrics, size: 60),
                              ],
                            ),
                          );
                        }

                        if (lyricsQuery.asData == null &&
                            playlist.activeTrack == null) {
                          return Text(
                            context.l10n.no_tracks_playing,
                            style: typography.large.copyWith(
                              color: context.theme.colorScheme.foreground,
                            ),
                            textAlign: TextAlign.center,
                          );
                        }

                        final rawLines =
                            lyricsQuery.asData?.value.lyrics
                                .map((e) => e.text)
                                .toList() ??
                            [];

                        // Group consecutive non-empty lines into paragraphs
                        final paragraphs = <List<String>>[];
                        var current = <String>[];
                        for (final line in rawLines) {
                          if (line.trim().isEmpty) {
                            if (current.isNotEmpty) {
                              paragraphs.add(current);
                              current = [];
                            }
                          } else {
                            current.add(line);
                          }
                        }
                        if (current.isNotEmpty) paragraphs.add(current);

                        final textColor = context.theme.colorScheme.foreground;
                        final fontSize = 20.0 * textZoomLevel.value / 100;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            for (final paragraph in paragraphs) ...[
                              SelectableText(
                                paragraph.join('\n'),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8,
                                ),
                              ),
                              SizedBox(height: fontSize * 1.2),
                            ],
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ZoomControls(
            value: textZoomLevel.value,
            onChanged: (value) => textZoomLevel.value = value,
            min: 50,
            max: 200,
          ),
        ),
      ],
    );
  }
}
