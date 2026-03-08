import 'dart:async';
import 'dart:ui';
import 'dart:io';

import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/services.dart';
import 'package:flutter_discord_rpc/flutter_discord_rpc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:home_widget/home_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_notifier/local_notifier.dart';
import 'package:media_kit/media_kit.dart';
import 'package:metadata_god/metadata_god.dart';
import 'package:smtc_windows/smtc_windows.dart';
import 'package:spotube/collections/env.dart';
import 'package:spotube/collections/http-override.dart';
import 'package:spotube/collections/intents.dart';
import 'package:spotube/collections/routes.dart';
import 'package:spotube/hooks/configurators/use_close_behavior.dart';
import 'package:spotube/hooks/configurators/use_deep_linking.dart';
import 'package:spotube/hooks/configurators/use_disable_battery_optimizations.dart';
import 'package:spotube/hooks/configurators/use_fix_window_stretching.dart';
import 'package:spotube/hooks/configurators/use_get_storage_perms.dart';
import 'package:spotube/hooks/configurators/use_has_touch.dart';
import 'package:spotube/components/startup_splash.dart';
import 'package:spotube/models/database/database.dart';
import 'package:spotube/modules/settings/color_scheme_picker_dialog.dart';
import 'package:spotube/provider/audio_player/audio_player_streams.dart';
import 'package:spotube/provider/database/database.dart';
import 'package:spotube/provider/glance/glance.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/provider/metadata_plugin/updater/update_checker.dart';
import 'package:spotube/provider/server/bonsoir.dart';
import 'package:spotube/provider/server/server.dart';
import 'package:spotube/provider/tray_manager/tray_manager.dart';
import 'package:spotube/l10n/l10n.dart';
import 'package:spotube/provider/connect/clients.dart';
import 'package:spotube/provider/user_preferences/user_preferences_provider.dart';
import 'package:spotube/services/audio_player/audio_player.dart';
import 'package:spotube/services/cli/cli.dart';
import 'package:spotube/services/kv_store/encrypted_kv_store.dart';
import 'package:spotube/services/kv_store/kv_store.dart';
import 'package:spotube/services/logger/logger.dart';
import 'package:spotube/services/wm_tools/wm_tools.dart';
import 'package:spotube/utils/migrations/sandbox.dart';
import 'package:spotube/utils/platform.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:window_manager/window_manager.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:yt_dlp_dart/yt_dlp_dart.dart';
import 'package:flutter_new_pipe_extractor/flutter_new_pipe_extractor.dart';

Future<void> main(List<String> rawArgs) async {
  if (rawArgs.contains("web_view_title_bar")) {
    WidgetsFlutterBinding.ensureInitialized();
    if (runWebViewTitleBarWidget(rawArgs)) {
      return;
    }
  }
  final arguments = await startCLI(rawArgs);
  AppLogger.initialize(arguments["verbose"]);

  AppLogger.runZoned(() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    HttpOverrides.global = BadCertificateAllowlistOverrides();

    // await registerWindowsScheme("spotify");

    tz.initializeTimeZones();

    MediaKit.ensureInitialized();

    if (!kIsWeb) {
      MetadataGod.initialize();
    }

    if (kIsDesktop) {
      // On desktop: show the window + splash screen immediately so the user
      // sees something right away instead of staring at a blank taskbar icon.
      // KVStoreService is cheap (SharedPreferences read) and must come first
      // so we can restore the saved window dimensions.
      await KVStoreService.initialize();
      await WindowManagerTools.initializeForSplash();
      runApp(const StartupSplash());
    } else {
      // On mobile / web keep the native splash until the app is ready.
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    }

    // Phase 1: Run independent pre-KVStore initializations in parallel
    await Future.wait([
      migrateMacOsFromSandboxToNoSandbox(),
      if (kIsAndroid) FlutterDisplayMode.setHighRefreshRate(),
      if (kIsAndroid || kIsDesktop) NewPipeExtractor.init(),
    ]);

    // Phase 2: KVStore — already initialised above for desktop
    if (!kIsDesktop) {
      await KVStoreService.initialize();
    }

    // Phase 3: Parallelize all tasks that are independent of EncryptedKvStore
    // or only depend on KVStore (already initialized above)
    final phase3 = <Future<void>>[EncryptedKvStoreService.initialize()];
    if (kIsDesktop) {
      phase3.addAll([
        windowManager.setPreventClose(true),
        () async {
          await YtDlp.instance
              .setBinaryLocation(
                KVStoreService.getYoutubeEnginePath(
                      YoutubeClientEngine.ytDlp,
                    ) ??
                    "yt-dlp${kIsWindows ? '.exe' : ''}",
              )
              .catchError((e, stack) => null);
        }(),
        FlutterDiscordRPC.initialize(Env.discordAppId),
        localNotifier.setup(appName: "Spotube"),
      ]);
    }
    if (kIsWindows) {
      phase3.add(SMTCWindows.initialize());
    }
    await Future.wait(phase3);

    // Phase 4: AppDatabase construction is O(1) (LazyDatabase).
    // On desktop the window is already shown; just register the size observer.
    final database = AppDatabase();
    if (kIsDesktop) {
      await WindowManagerTools.initializeObserverOnly();
    }

    if (kIsIOS) {
      HomeWidget.setAppGroupId("group.spotube_home_player_widget");
    }

    runApp(
      ProviderScope(
        overrides: [databaseProvider.overrideWith((ref) => database)],
        observers: const [AppLoggerProviderObserver()],
        child: const Spotube(),
      ),
    );
  });
}

class Spotube extends HookConsumerWidget {
  const Spotube({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final themeMode = ref.watch(
      userPreferencesProvider.select((s) => s.themeMode),
    );
    final locale = ref.watch(userPreferencesProvider.select((s) => s.locale));
    final accentMaterialColor = ref.watch(
      userPreferencesProvider.select((s) => s.accentColorScheme),
    );
    final disableGlassEffect = ref.watch(
      userPreferencesProvider.select((s) => s.disableGlassEffect),
    );
    final router = useMemoized(() => AppRouter(ref), []);
    final hasTouchSupport = useHasTouch();

    ref.listen(audioPlayerStreamListenersProvider, (_, _) {});
    ref.listen(bonsoirProvider, (_, _) {});
    ref.listen(connectClientsProvider, (_, _) {});
    ref.listen(serverProvider, (_, _) {});
    ref.listen(trayManagerProvider, (_, _) {});
    ref.listen(metadataPluginsProvider, (_, _) {});
    ref.listen(metadataPluginProvider, (_, _) {});
    ref.listen(audioSourcePluginProvider, (_, _) {});
    ref.listen(metadataPluginUpdateCheckerProvider, (_, _) {});
    ref.listen(audioSourcePluginUpdateCheckerProvider, (_, _) {});

    useFixWindowStretching();
    useDisableBatteryOptimizations();
    useDeepLinking(ref, router);
    useCloseBehavior(ref);
    useGetStoragePermissions(ref);

    useEffect(() {
      FlutterNativeSplash.remove();

      if (kIsMobile) {
        HomeWidget.registerInteractivityCallback(glanceBackgroundCallback);
      }

      return () {
        /// For enabling hot reload for audio player
        if (!kDebugMode) return;
        audioPlayer.dispose();
      };
    }, []);

    return ShadcnApp.router(
      supportedLocales: L10n.all,
      locale: locale.languageCode == "system" ? null : locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
      title: 'Spotube',
      builder: (context, child) {
        child = ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: hasTouchSupport
                ? {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.stylus,
                    PointerDeviceKind.invertedStylus,
                  }
                : null,
          ),
          child: child!,
        );

        if (kIsLinux) {
          child = DragToResizeArea(resizeEdgeSize: 2.5, child: child);
        }

        return child;
      },
      scaling: const AdaptiveScaling(1),
      theme: ThemeData(
        radius: .5,
        iconTheme: const IconThemeProperties(),
        colorScheme:
            colorSchemeMap[accentMaterialColor.name]?.call(ThemeMode.light) ??
            LegacyColorSchemes.lightSlate(),
        surfaceOpacity: disableGlassEffect ? 1 : .8,
        surfaceBlur: disableGlassEffect ? 0 : 10,
      ),
      darkTheme: ThemeData(
        radius: .5,
        iconTheme: const IconThemeProperties(),
        colorScheme:
            colorSchemeMap[accentMaterialColor.name]?.call(ThemeMode.dark) ??
            LegacyColorSchemes.darkSlate(),
        surfaceOpacity: disableGlassEffect ? 1 : .8,
        surfaceBlur: disableGlassEffect ? 0 : 10,
      ),
      materialTheme: material.ThemeData(
        brightness: switch (themeMode) {
          ThemeMode.system => MediaQuery.platformBrightnessOf(context),
          ThemeMode.light => Brightness.light,
          ThemeMode.dark => Brightness.dark,
        },
        splashFactory: material.NoSplash.splashFactory,
        appBarTheme: const material.AppBarTheme(
          surfaceTintColor: Colors.transparent,
          scrolledUnderElevation: 0,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      themeMode: themeMode,
      shortcuts: {
        ...WidgetsApp.defaultShortcuts.map((key, value) {
          return MapEntry(
            LogicalKeySet.fromSet(key.triggers?.toSet() ?? {}),
            value,
          );
        }),
        LogicalKeySet(LogicalKeyboardKey.space): PlayPauseIntent(ref),
        LogicalKeySet(LogicalKeyboardKey.comma, LogicalKeyboardKey.control):
            NavigationIntent(router, "/settings"),
        LogicalKeySet(
          LogicalKeyboardKey.digit1,
          LogicalKeyboardKey.control,
          LogicalKeyboardKey.shift,
        ): HomeTabIntent(
          router,
          tab: HomeTabs.browse,
        ),
        LogicalKeySet(
          LogicalKeyboardKey.digit2,
          LogicalKeyboardKey.control,
          LogicalKeyboardKey.shift,
        ): HomeTabIntent(
          router,
          tab: HomeTabs.search,
        ),
        LogicalKeySet(
          LogicalKeyboardKey.digit3,
          LogicalKeyboardKey.control,
          LogicalKeyboardKey.shift,
        ): HomeTabIntent(
          router,
          tab: HomeTabs.lyrics,
        ),
        LogicalKeySet(
          LogicalKeyboardKey.digit4,
          LogicalKeyboardKey.control,
          LogicalKeyboardKey.shift,
        ): HomeTabIntent(
          router,
          tab: HomeTabs.userPlaylists,
        ),
        LogicalKeySet(
          LogicalKeyboardKey.digit5,
          LogicalKeyboardKey.control,
          LogicalKeyboardKey.shift,
        ): HomeTabIntent(
          router,
          tab: HomeTabs.userArtists,
        ),
        LogicalKeySet(
          LogicalKeyboardKey.digit6,
          LogicalKeyboardKey.control,
          LogicalKeyboardKey.shift,
        ): HomeTabIntent(
          router,
          tab: HomeTabs.userAlbums,
        ),
        LogicalKeySet(
          LogicalKeyboardKey.digit7,
          LogicalKeyboardKey.control,
          LogicalKeyboardKey.shift,
        ): HomeTabIntent(
          router,
          tab: HomeTabs.userLocalLibrary,
        ),
        LogicalKeySet(
          LogicalKeyboardKey.digit8,
          LogicalKeyboardKey.control,
          LogicalKeyboardKey.shift,
        ): HomeTabIntent(
          router,
          tab: HomeTabs.userDownloads,
        ),
        LogicalKeySet(
          LogicalKeyboardKey.keyW,
          LogicalKeyboardKey.control,
          LogicalKeyboardKey.shift,
        ): CloseAppIntent(),
      },
      actions: {
        ...WidgetsApp.defaultActions,
        PlayPauseIntent: PlayPauseAction(),
        NavigationIntent: NavigationAction(),
        HomeTabIntent: HomeTabAction(),
        CloseAppIntent: CloseAppAction(),
      },
    );
  }
}
