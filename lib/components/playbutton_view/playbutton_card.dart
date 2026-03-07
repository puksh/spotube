import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:shadcn_flutter/shadcn_flutter_extension.dart';
import 'package:spotube/collections/spotube_icons.dart';
import 'package:spotube/components/image/universal_image.dart';
import 'package:spotube/extensions/string.dart';
import 'package:spotube/l10n/generated/app_localizations.dart';
import 'package:spotube/utils/platform.dart';

class PlaybuttonCard extends StatelessWidget {
  final void Function()? onTap;
  final void Function()? onPlaybuttonPressed;
  final void Function()? onAddToQueuePressed;
  final String? description;

  final String? imageUrl;
  final Widget? image;
  final bool isActive;
  final bool isPlaying;
  final bool isLoading;
  final String title;
  final bool isOwner;

  const PlaybuttonCard({
    required this.isActive,
    required this.isPlaying,
    required this.isLoading,
    required this.title,
    this.description,
    this.onPlaybuttonPressed,
    this.onAddToQueuePressed,
    this.onTap,
    this.isOwner = false,
    this.imageUrl,
    this.image,
    super.key,
  }) : assert(
          imageUrl != null || image != null,
          "imageUrl and image can't be null at the same time",
        );

  @override
  Widget build(BuildContext context) {
    final unescapeHtml = description?.unescapeHtml().cleanHtml() ?? "";
    final scale = context.theme.scaling;

    return SizedBox(
      width: 150 * scale,
      child: CardImage(
        hoverScale: 1.0,
        image: Stack(
          children: [
            if (imageUrl != null)
              Container(
                width: 150 * scale,
                height: 150 * scale,
                decoration: BoxDecoration(
                  borderRadius: context.theme.borderRadiusMd,
                  image: DecorationImage(
                    image: UniversalImage.imageProvider(
                      imageUrl!,
                      height: 200 * scale,
                      width: 200 * scale,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            else
              SizedBox(
                width: 150 * scale,
                height: 150 * scale,
                child: ClipRRect(
                  borderRadius: context.theme.borderRadiusMd,
                  child: image!,
                ),
              ),
            StatedWidget.builder(
              builder: (context, states) {
                return Positioned(
                  right: 8,
                  bottom: 8,
                  child: Column(
                    children: [
                      AnimatedScale(
                        duration: const Duration(milliseconds: 200),
                        scale: 1,
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: (states.contains(WidgetState.hovered) ||
                                      kIsMobile) &&
                                  !isLoading
                              ? 1
                              : 0,
                          child: Tooltip(
                            tooltip: TooltipContainer(
                              child: Text(
                                  AppLocalizations.of(context)!.add_to_queue),
                            ).call,
                            child: IconButton.secondary(
                              icon: const Icon(SpotubeIcons.queueAdd),
                              onPressed: onAddToQueuePressed,
                              size: ButtonSize.small,
                            ),
                          ),
                        ),
                      ),
                      const Gap(5),
                      AnimatedScale(
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 200),
                        scale: 1,
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: states.contains(WidgetState.hovered) ||
                                  kIsMobile ||
                                  isActive ||
                                  isLoading
                              ? 1
                              : 0,
                          child: Tooltip(
                            tooltip: TooltipContainer(
                              child: Text(switch ((isLoading, isPlaying)) {
                                (true, _) =>
                                  AppLocalizations.of(context)!.loading,
                                (false, false) =>
                                  AppLocalizations.of(context)!.play,
                                (false, true) =>
                                  AppLocalizations.of(context)!.pause_playback,
                              }),
                            ).call,
                            child: IconButton.secondary(
                              icon: switch ((isLoading, isPlaying)) {
                                (true, _) => const CircularProgressIndicator(
                                    size: 15,
                                  ),
                                (false, false) => const Icon(SpotubeIcons.play),
                                (false, true) => const Icon(SpotubeIcons.pause)
                              },
                              enabled: !isLoading,
                              onPressed: onPlaybuttonPressed,
                              size: ButtonSize.small,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            if (isOwner)
              StatedWidget.builder(
                builder: (context, states) {
                  return Positioned(
                    right: 5,
                    top: 5,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: states.contains(WidgetState.hovered) ? 1 : 0.5,
                      child: Tooltip(
                        tooltip: TooltipContainer(
                          child: Text(
                              AppLocalizations.of(context)!.playlist_owner),
                        ).call,
                        child: const SecondaryBadge(
                          style: ButtonStyle.secondaryIcon(
                            shape: ButtonShape.circle,
                            size: ButtonSize.small,
                          ),
                          child: Icon(SpotubeIcons.user),
                        ),
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
        title: Tooltip(
          tooltip: TooltipContainer(child: Text(title)).call,
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        subtitle: Text(
          unescapeHtml.isEmpty ? "\n" : unescapeHtml,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        onPressed: onTap,
      ),
    );
  }
}
