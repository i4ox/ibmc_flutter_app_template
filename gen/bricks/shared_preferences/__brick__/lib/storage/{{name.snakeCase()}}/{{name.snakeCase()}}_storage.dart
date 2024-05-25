import 'package:ibmc_flutter_app_template/storage/{{name.snakeCase()}}/i_{{name.snakeCase()}}_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Persistent storage for ...
/// Based on SharedPreferences.
class {{name.pascalCase()}}Storage implements I{{name.pascalCase()}}Storage {
  final SharedPreferences _prefs;

  /// Create an instance [ThemeModeStorage].
  const {{name.pascalCase()}}Storage(this._prefs);
}

/// Keys for [{{name.pascalCase()}}Storage].
enum {{name.pascalCase()}}StorageKeys {
  /// Example value
  example("example_key");

  /// Key Name.
  final String keyName;

  const {{name.pascalCase()}}StorageKeys(this.keyName);
}