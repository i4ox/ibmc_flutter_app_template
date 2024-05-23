
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ibmc_flutter_app_template/api/app_dio_configurator.dart';
import 'package:ibmc_flutter_app_template/config/app_config.dart';
import 'package:ibmc_flutter_app_template/config/environment/environment.dart';
import 'package:ibmc_flutter_app_template/features/app/di/app_scope.dart';
import 'package:ibmc_flutter_app_template/features/app/di/i_app_scope.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template app_scope_register.class}
/// Creates and initializes AppScope.
/// {@endtemplate}
final class AppScopeRegister {
  /// {@macro app_scope_register.class}
  const AppScopeRegister();

  Future<IAppScope> createScope(Environment env) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final appConfig = _createAppConfig(env, sharedPreferences);

    const dioConfigurator = AppDioConfigurator();
    final interceptors = <Interceptor>[];
    final dio = dioConfigurator.create(
      interceptors: interceptors,
      url: appConfig.url.value,
    );

    return AppScope(
      env: env,
      appConfig: appConfig,
      sharedPreferences: sharedPreferences,
      dio: dio,
      // logger: logger,
    );
  }

  AppConfig _createAppConfig(Environment env, SharedPreferences sharedPreferences) {
    if (env.isProd && kReleaseMode) {
      return AppConfig(url: env.buildType.defaultUrl); // INFO: Modify if needed
    }

    return AppConfig(url: env.buildType.defaultUrl);
  }
}