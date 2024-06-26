import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:ibmc_flutter_app_template/common/mixin/theme_wm_mixin.dart';
import 'package:ibmc_flutter_app_template/features/{{feature_name.snakeCase()}}/di/{{feature_name.snakeCase()}}_scope.dart';
import 'package:ibmc_flutter_app_template/features/{{feature_name.snakeCase()}}/presentation/screens/{{screen_name.snakeCase()}}/{{screen_name.snakeCase()}}_model.dart';
import 'package:ibmc_flutter_app_template/features/{{feature_name.snakeCase()}}/presentation/screens/{{screen_name.snakeCase()}}/{{screen_name.snakeCase()}}_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [{{screen_name.pascalCase()}}WM].
{{screen_name.pascalCase()}}WM default{{screen_name.pascalCase()}}WMFactory(BuildContext context) {
  final scope = context.read<I{{feature_name.pascalCase()}}Scope>();

  return {{screen_name.pascalCase()}}WM({{screen_name.pascalCase()}}Model(repository: scope.repository));
}

/// Interface for [{{screen_name.pascalCase()}}WM].
abstract interface class I{{screen_name.pascalCase()}}WM with ThemeIModelMixin implements IWidgetModel {}

/// {@template {{screen_name.snakeCase()}}_wm.class}
/// [WidgetModel] for [{{screen_name.pascalCase()}}Screen].
/// {@endtemplate}
final class {{screen_name.pascalCase()}}WM extends WidgetModel<{{screen_name.pascalCase()}}Screen, {{screen_name.pascalCase()}}Model> with ThemeWMMixin implements I{{screen_name.pascalCase()}}WM {
  /// {@macro {{screen_name.snakeCase()}}_wm.class}
  {{screen_name.pascalCase()}}WM(super._model);
}