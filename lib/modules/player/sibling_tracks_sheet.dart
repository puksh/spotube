import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:spotube/components/fallbacks/not_found.dart';
import 'package:spotube/components/image/universal_image.dart';
import 'package:spotube/components/inter_scrollbar/inter_scrollbar.dart';
import 'package:spotube/components/ui/button_tile.dart';
import 'package:spotube/extensions/constrains.dart';
import 'package:spotube/extensions/context.dart';
import 'package:spotube/extensions/duration.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/audio_player/audio_player.dart';
import 'package:spotube/provider/server/sourced_track_provider.dart';

class SiblingTracksSheet extends HookConsumerWidget {
  final bool floating;
  const SiblingTracksSheet({super.key, this.floating = true});

  @override
  Widget build(BuildContext context, ref) {
    final controller = useScrollController();

    final activeTrack = ref.watch(
      audioPlayerProvider.select((e) => e.activeTrack),
    );

    if (activeTrack == null || activeTrack is! SpotubeFullTrackObject) {
      return const SafeArea(child: NotFound());
    }

    return HookBuilder(
      builder: (context) {
        final sourcedTrack = ref.watch(sourcedTrackProvider(activeTrack));
        final sourcedTrackNotifier = ref.watch(
          sourcedTrackProvider(activeTrack).notifier,
        );

        // Track errors keyed by sibling ID
        final siblingErrors = useState<Map<String, String>>({});

        final siblings = useMemoized<List<SpotubeAudioSourceMatchObject>>(
          () => !sourcedTrack.isLoading
              ? <SpotubeAudioSourceMatchObject>[
                  if (sourcedTrack.asData?.value != null)
                    sourcedTrack.asData!.value.info,
                  ...?sourcedTrack.asData?.value.siblings,
                ]
              : <SpotubeAudioSourceMatchObject>[],
          [sourcedTrack],
        );

        useEffect(() {
          /// Populate sibling when active track changes
          if (sourcedTrack.asData?.value != null &&
              sourcedTrack.asData?.value.siblings.isEmpty == true) {
            sourcedTrackNotifier.copyWithSibling();
          }
          return null;
        }, [sourcedTrack]);

        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 16,
                ),
                child: Row(
                  spacing: 5,
                  children: [
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: Text(
                        context.l10n.alternative_track_sources,
                      ).bold(),
                    ),
                  ],
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: sourcedTrack.isLoading
                    ? const SizedBox(
                        width: double.infinity,
                        child: LinearProgressIndicator(),
                      )
                    : const SizedBox.shrink(),
              ),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) =>
                      FadeTransition(opacity: animation, child: child),
                  child: InterScrollbar(
                    controller: controller,
                    child: ListView.separated(
                      padding: const EdgeInsets.all(8.0),
                      controller: controller,
                      itemCount: siblings.length,
                      separatorBuilder: (context, index) => const Gap(8),
                      itemBuilder: (context, index) {
                        final sourceInfo = siblings[index];

                        // Fall back to the Spotify track's own duration when the
                        // audio source plugin returns zero or an unreasonably small
                        // value (e.g. seconds mis-encoded as microseconds).
                        final effectiveDuration =
                            sourceInfo.duration < const Duration(seconds: 30)
                            ? Duration(milliseconds: activeTrack.durationMs)
                            : sourceInfo.duration;

                        final errorMessage = siblingErrors.value[sourceInfo.id];

                        return ButtonTile(
                          style: ButtonVariance.ghost,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          title: Text(
                            sourceInfo.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          leading: sourceInfo.thumbnail != null
                              ? UniversalImage(
                                  path: sourceInfo.thumbnail!,
                                  height: 60,
                                  width: 60,
                                )
                              : null,
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            spacing: 4,
                            children: [
                              if (errorMessage != null)
                                Tooltip(
                                  tooltip: (context) => ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 280,
                                    ),
                                    child: Text(
                                      errorMessage,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  child: Icon(
                                    RadixIcons.exclamationTriangle,
                                    size: 16,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.destructive,
                                  ),
                                ),
                              Text(effectiveDuration.toHumanReadableString()),
                            ],
                          ),
                          subtitle: Text(
                            sourceInfo.artists.join(", "),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          enabled: !sourcedTrack.isLoading,
                          selected:
                              !sourcedTrack.isLoading &&
                              sourceInfo.id ==
                                  sourcedTrack.asData?.value.info.id,
                          onPressed: () async {
                            if (!sourcedTrack.isLoading &&
                                sourceInfo.id !=
                                    sourcedTrack.asData?.value.info.id) {
                              try {
                                await sourcedTrackNotifier.swapWithSibling(
                                  sourceInfo,
                                );
                                await ref
                                    .read(audioPlayerProvider.notifier)
                                    .swapActiveSource();

                                // Clear any previous error for this sibling
                                if (siblingErrors.value.containsKey(
                                  sourceInfo.id,
                                )) {
                                  siblingErrors.value = {...siblingErrors.value}
                                    ..remove(sourceInfo.id);
                                }

                                if (context.mounted) {
                                  if (MediaQuery.sizeOf(context).mdAndUp) {
                                    closeOverlay(context);
                                  } else {
                                    closeDrawer(context);
                                  }
                                }
                              } catch (e) {
                                siblingErrors.value = {
                                  ...siblingErrors.value,
                                  sourceInfo.id: e.toString(),
                                };
                              }
                            }
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
