import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:spotube/services/kv_store/kv_store.dart';
import 'package:spotube/utils/platform.dart';
import 'package:window_manager/window_manager.dart';

class WindowSize {
  final double height;
  final double width;
  final bool maximized;

  WindowSize({
    required this.height,
    required this.width,
    required this.maximized,
  });

  factory WindowSize.fromJson(Map<String, dynamic> json) => WindowSize(
        height: json["height"],
        width: json["width"],
        maximized: json["maximized"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "maximized": maximized,
      };
}

class WindowManagerTools with WidgetsBindingObserver {
  static WindowManagerTools? _instance;
  static WindowManagerTools get instance => _instance!;

  WindowManagerTools._();

  /// Shows the window immediately so the startup splash is visible right away.
  ///
  /// Must be called **after** [KVStoreService.initialize] so the saved window
  /// size can be restored. Call [runApp] with [StartupSplash] straight after
  /// this, then call [initializeObserverOnly] once full init completes.
  static Future<void> initializeForSplash() async {
    await windowManager.ensureInitialized();

    final savedSize = KVStoreService.windowSize;
    final width = savedSize?.width ?? 920.0;
    final height = savedSize?.height ?? 700.0;
    final maximized = savedSize?.maximized ?? false;

    await windowManager.waitUntilReadyToShow(
      WindowOptions(
        size: Size(width, height),
        center: true,
        title: "Spotube",
        // Opaque dark background matches the splash widget colour so no
        // flash is visible before Flutter paints the first frame.
        backgroundColor: const Color(0xFF0F172A),
        minimumSize: const Size(300, 700),
        titleBarStyle: TitleBarStyle.hidden,
      ),
      () async {
        await windowManager.setResizable(true);
        if (maximized && !(await windowManager.isMaximized())) {
          await windowManager.maximize();
        }
        await windowManager.show();
        await windowManager.focus();
      },
    );
  }

  /// Registers the window-size observer without touching the window itself.
  ///
  /// Use after [initializeForSplash] + all heavy initialisation, just before
  /// the real [runApp] call. The window is already correctly sized and visible.
  static Future<void> initializeObserverOnly() async {
    // Reset the window background to transparent so the real app's blur /
    // acrylic effects are not masked by the opaque splash background.
    await windowManager.setBackgroundColor(Colors.transparent);
    _instance = WindowManagerTools._();
    WidgetsBinding.instance.addObserver(instance);
  }

  static Future<void> initialize() async {
    await windowManager.ensureInitialized();
    _instance = WindowManagerTools._();
    WidgetsBinding.instance.addObserver(instance);

    await windowManager.waitUntilReadyToShow(
      const WindowOptions(
        title: "Spotube",
        backgroundColor: Colors.transparent,
        minimumSize: Size(300, 700),
        titleBarStyle: TitleBarStyle.hidden,
        center: true,
      ),
      () async {
        final savedSize = KVStoreService.windowSize;
        await windowManager.setResizable(true);
        if (savedSize?.maximized == true &&
            !(await windowManager.isMaximized())) {
          await windowManager.maximize();
        } else if (savedSize != null) {
          await windowManager.setSize(Size(savedSize.width, savedSize.height));
        }

        await windowManager.focus();
        await windowManager.show();
      },
    );
  }

  static Future<void> dispose() async {
    final current = _instance;
    if (current == null) return;

    WidgetsBinding.instance.removeObserver(current);
    _instance = null;
  }

  Size? _prevSize;

  @override
  void didChangeMetrics() async {
    super.didChangeMetrics();
    if (kIsMobile) return;
    final size = await windowManager.getSize();
    final windowSameDimension =
        _prevSize?.width == size.width && _prevSize?.height == size.height;

    if (windowSameDimension || _prevSize == null) {
      _prevSize = size;
      return;
    }
    final isMaximized = await windowManager.isMaximized();
    await KVStoreService.setWindowSize(
      WindowSize(
        height: size.height,
        width: size.width,
        maximized: isMaximized,
      ),
    );
    _prevSize = size;
  }
}
