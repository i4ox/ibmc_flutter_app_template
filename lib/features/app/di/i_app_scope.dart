import 'package:dio/dio.dart';
import 'package:ibmc_flutter_app_template/config/app_config.dart';
import 'package:ibmc_flutter_app_template/config/environment/environment.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class IAppScope {
  /// Environment.
  Environment get env;

  /// App configuration.
  AppConfig get appConfig;

  /// Http client
  Dio get dio;

  /// Shared Preferences
  SharedPreferences get sharedPreferences;

  /// Logger
  // ILogWriter get logger;
}