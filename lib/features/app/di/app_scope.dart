import 'package:dio/dio.dart';
import 'package:ibmc_flutter_app_template/config/app_config.dart';
import 'package:ibmc_flutter_app_template/config/environment/environment.dart';
import 'package:ibmc_flutter_app_template/features/app/di/i_app_scope.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template app_scope.class}
/// Scope of dependencies which are needed through the whole app's life.
/// {@endtemplate}
final class AppScope implements IAppScope {
  @override
  final Environment env;

  @override
  final AppConfig appConfig;

  @override
  final Dio dio;

  @override
  final SharedPreferences sharedPreferences;

  // @override
  // // final ILogWriter logger;

  /// {@macro app_scope.class}
  const AppScope({
    required this.env,
    required this.appConfig,
    required this.dio,
    required this.sharedPreferences,
    // required this.logger,
  });
}

