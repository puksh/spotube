# Spotube Copilot Instructions

You are an expert Flutter and Dart developer acting as the primary AI pair programmer for this project. Spotube is an open-source, extensible music streaming platform based on the BYOMM (Bring Your Own Music Metadata) concept. Spotube uses alternative frontends (like YouTube) for audio sources while using Spotify/Last.fm for metadata.

## Core Stack & Dependencies

- **SDK Range:** Dart `>=3.0.0 <4.0.0`, Flutter `>=3.29.0` (Cross-platform: Desktop, Mobile, Web)
- **State Management & DI:** `riverpod`, `hooks_riverpod` (manual Notifier/AsyncNotifier, no `riverpod_generator`)
- **Lifecycle & Widgets:** `flutter_hooks` (use custom hooks instead of StatefulWidgets)
- **Routing:** `auto_route` (specifically `RootStackRouter` with `@AutoRouterConfig`)
- **Database:** `drift` (using `sqlite3`)
- **Models:** `freezed_annotation`, `json_serializable` (run build_runner to generate `.freezed.dart` and `.g.dart` files)
- **UI & Layout:** `shadcn_flutter` (prefer shadcn components over raw Material/Cupertino widgets), custom components in `lib/components`
- **Audio/Media:** `media_kit`, `audio_service`, `desktop_webview_window`
- **Networking:** `dio`, `http`

## Architecture & Domain Rules

This project follows a feature-grouped and layered structure. Adhere to it meticulously:

### Directory Structure Boundaries

1. `lib/collections/`: Environment configuration (`env.dart`), app-wide routes (`routes.dart`), intents, and application primitives.
2. `lib/components/`: Reusable, cross-feature UI widgets (shimmers, buttons, custom cards like `track_tile/`, etc.).
3. `lib/hooks/`: Flutter hook implementations (`use_...` files). Extract widget state into hooks instead of StatefulWidgets.
4. `lib/models/`: Immutable data models defined with `@freezed` and `@JsonSerializable`.
5. `lib/modules/`: Feature-specific logic, controllers, and dialogs grouped by domain (e.g., `album/`, `artist/`, `player/`, `playlist/`).
6. `lib/pages/`: Main routable UI screens mapped via `auto_route` (e.g., `<FeatureName>Page`).
7. `lib/provider/`: Riverpod states and business logic providers (`Notifier`, `AsyncNotifier`, `Provider`).
8. `lib/services/`: Stateless interaction boundaries (e.g., database DAOs, loggers, OS platform methods with `WMTools` or `KVStoreService`).
9. `drift_schemas/`: Drift table schemas.

### Coding Guidelines & Conventions

#### 1. State Management (Riverpod + Hooks)

- Prefer `HookConsumerWidget` from `hooks_riverpod` as the default widget type. Avoid `StatefulWidget`; use `useState`, `useMemoized`, and `useEffect`.
- Define providers directly using `Notifier`, `AsyncNotifier`, or `StateNotifier` classes. Do **not** use `riverpod_generator` (`@riverpod` macros) as the project defines providers manually.
- Expose providers as global `final <name>Provider = NotifierProvider<...>(...);`
- Inject dependencies using Riverpod's `ref.read` / `ref.watch`.

#### 2. Models & Data Classes

- Always use `freezed` for models. Ensure each file has `part 'filename.freezed.dart';` and optionally `part 'filename.g.dart';` for JSON.
- Treat data models as strict, immutable objects.
- Prefer `collection` package methods (e.g., `firstWhereOrNull`) over plain iterables throwing `StateError`.

#### 3. Platform Awareness & Capabilities

- Utilize `kIsWeb`, `kIsDesktop`, `kIsAndroid`, and `Platform` checks when targeting specific platform capabilities.
- KVStore operations should be strictly performed using `KVStoreService`, and ensure initialization where needed.
- Treat desktop capabilities (Windows/macOS/Linux metadata integrations) explicitly via OS-specific plugins (`smtc_windows`, `dbus`, native toolbars).

#### 4. UI/UX Rules

- Use `shadcn_flutter` for theming and standard UI elements (buttons, inputs, dialogs) instead of plain `flutter/material.dart` whenever feasible.
- Ensure the music UI is continuously synchronized across all widgets. Update the shared global models (in `audio_player/state.dart`) when a track changes.
- Handle rate-limits and API errors gracefully (use specific logging like `AppLogger.runZoned` and UI snackbars/toasts where applicable).
- Support responsive window sizes (Mobile standard layout vs Desktop multi-pane layout).

#### 5. Testing

- Implement pure logic tests without Flutter dependencies where possible.
- Use Integration tests (`integration_test/app_test.dart`) for full flow and DB-involved behavior.
- Ensure `drift` mocks or memory SQLite databases are used in test setups.

## Commit & PR Guidelines

- Follow conventional commits.
- Ensure `dart run build_runner build -d` is passed globally locally on model/drift changes.
- Add entries to `CHANGELOG.md` utilizing `git-cliff` (`cliff.toml`).

## Useful Scripts & Commands

- **Build runner:** `dart run build_runner build -d`
- **Drift schemas:** Manage database shape in `drift_schemas/` and build with `build_runner`.
- **Formatting:** Keep in-line with standard `dart format`.
- **Terminal:** Use Powershell commands, we are coding on Windows OS.
