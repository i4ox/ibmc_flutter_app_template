import 'package:flutter/src/material/app.dart';
import 'package:ibmc_flutter_app_template/storage/theme_mode/i_theme_mode_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Persistent storage for theme mode.
/// Based on SharedPreferences.
class ThemeModeStorage implements IThemeModeStorage {
  final SharedPreferences _prefs;

  /// Create an instance [ThemeModeStorage].
  const ThemeModeStorage(this._prefs);

  @override
  ThemeMode? getThemeMode() {
    final themeName = _prefs.getString(ThemeModeStorageKeys.mode.keyName);
    if (themeName?.isEmpty ?? true) return null;

    return ThemeMode.values.firstWhere((e) => e.name == themeName);
  }

  @override
  Future<void> saveThemeMode({required ThemeMode mode}) {
    return _prefs.setString(ThemeModeStorageKeys.mode.keyName, mode.name);
  }
}

/// Keys for [ThemeModeStorage].
enum ThemeModeStorageKeys {
  /// Theme mode.
  mode("theme_mode");

  /// Key Name.
  final String keyName;

  const ThemeModeStorageKeys(this.keyName);
}