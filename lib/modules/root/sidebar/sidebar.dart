import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

import 'package:spotube/collections/side_bar_tiles.dart';
import 'package:spotube/models/database/database.dart';
import 'package:spotube/extensions/constrains.dart';
import 'package:spotube/extensions/context.dart';
import 'package:spotube/modules/root/sidebar/sidebar_footer.dart';

import 'package:spotube/provider/user_preferences/user_preferences_provider.dart';

class Sidebar extends HookConsumerWidget {
  final Widget child;

  const Sidebar({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData(:colorScheme) = Theme.of(context);
    final mediaQuery = MediaQuery.sizeOf(context);

    final layoutMode =
        ref.watch(userPreferencesProvider.select((s) => s.layoutMode));

    final sidebarTileList = useMemoized(
      () => getSidebarTileList(context.l10n),
      [context.l10n],
    );

    final sidebarLibraryTileList = useMemoized(
      () => getSidebarLibraryTileList(context.l10n),
      [context.l10n],
    );

    final tileList = [...sidebarTileList, ...sidebarLibraryTileList];

    final router = context.watchRouter;

    final selectedIndex = tileList.indexWhere(
      (e) => router.currentPath.startsWith(e.pathPrefix),
    );

    final showSidebar = !(layoutMode == LayoutMode.compact ||
        (mediaQuery.smAndDown && layoutMode == LayoutMode.adaptive));

    final selectedKey =
        selectedIndex >= 0 ? ValueKey(tileList[selectedIndex].id) : null;

    final navigationButtons = [
      NavigationGroup(
        label: mediaQuery.lgAndUp
            ? DefaultTextStyle(
                style: TextStyle(
                  fontFamily: "Cookie",
                  fontSize: 30,
                  letterSpacing: 1.8,
                  color: colorScheme.foreground,
                ),
                child: const Text("Spotube"),
              )
            : const Text(""),
        children: const [],
      ),
      for (final tile in sidebarTileList)
        NavigationItem(
          key: ValueKey(tile.id),
          selected: router.currentPath.startsWith(tile.pathPrefix),
          label: mediaQuery.lgAndUp ? Text(tile.title) : null,
          child: Tooltip(
            tooltip: TooltipContainer(child: Text(tile.title)).call,
            child: Icon(tile.icon),
          ),
          onChanged: (selected) async {
            if (selected && !router.currentPath.startsWith(tile.pathPrefix)) {
              await context.navigateTo(tile.route);
            }
          },
        ),
      const NavigationDivider(),
      if (mediaQuery.lgAndUp)
        NavigationGroup(
          label: Text(context.l10n.library),
          children: const [],
        ),
      for (final tile in sidebarLibraryTileList)
        NavigationItem(
          key: ValueKey(tile.id),
          selected: router.currentPath.startsWith(tile.pathPrefix),
          label: mediaQuery.lgAndUp ? Text(tile.title) : null,
          onChanged: (selected) async {
            if (selected && !router.currentPath.startsWith(tile.pathPrefix)) {
              await context.navigateTo(tile.route);
            }
          },
          child: Tooltip(
            tooltip: TooltipContainer(child: Text(tile.title)).call,
            child: Icon(tile.icon),
          ),
        ),
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showSidebar)
          Column(
            children: [
              Expanded(
                child: mediaQuery.lgAndUp
                    ? NavigationSidebar(
                        selectedKey: selectedKey,
                        onSelected: (key) {
                          if (key == null) return;
                          final idx = tileList.indexWhere(
                            (t) => ValueKey(t.id) == key,
                          );
                          if (idx >= 0 &&
                              !router.currentPath.startsWith(
                                tileList[idx].pathPrefix,
                              )) {
                            context.navigateTo(tileList[idx].route);
                          }
                        },
                        children: navigationButtons,
                      )
                    : NavigationRail(
                        alignment: NavigationRailAlignment.start,
                        selectedKey: selectedKey,
                        onSelected: (key) {
                          if (key == null) return;
                          final idx = tileList.indexWhere(
                            (t) => ValueKey(t.id) == key,
                          );
                          if (idx >= 0 &&
                              !router.currentPath.startsWith(
                                tileList[idx].pathPrefix,
                              )) {
                            context.navigateTo(tileList[idx].route);
                          }
                        },
                        children: navigationButtons,
                      ),
              ),
              const SidebarFooter(),
              if (mediaQuery.lgAndUp) const Gap(130) else const Gap(65),
            ],
          ),
        if (showSidebar) const VerticalDivider(),
        Expanded(
          child: KeyedSubtree(
            key: const ValueKey('root-sidebar-child'),
            child: child,
          ),
        ),
      ],
    );
  }
}
