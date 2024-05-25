import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibmc_flutter_app_template/config/environment/environment.dart';
import 'package:ibmc_flutter_app_template/features/app/app_flow.dart';
import 'package:ibmc_flutter_app_template/features/app/di/app_scope_register.dart';

Future<void> run(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO(init-project): Change as needed or remove
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await _runApp(env);
}

Future<void> _runApp(Environment env) async {
  const scopeRegister = AppScopeRegister();
  final scope = await scopeRegister.createScope(env);

  runApp(AppFlow(appScope: scope));
}
