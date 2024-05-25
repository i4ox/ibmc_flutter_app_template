import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:ibmc_flutter_app_template/common/mixin/localization_mixin.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/di/feature_example_scope.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/presentation/screens/feature_example/feature_example_model.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/presentation/screens/feature_example/feature_example_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [FeatureExampleWM].
FeatureExampleWM defaultFeatureExampleWMFactory(BuildContext context) {
  final scope = context.read<IFeatureExampleScope>();

  return FeatureExampleWM(FeatureExampleModel(repository: scope.repository));
}

/// Interface for [FeatureExampleWM].
abstract interface class IFeatureExampleWM with ILocalizationMixin implements IWidgetModel {}

/// {@template feature_example_wm.class}
/// [WidgetModel] for [FeatureExampleScreen].
/// {@endtemplate}
final class FeatureExampleWM extends WidgetModel<FeatureExampleScreen, FeatureExampleModel>
    with LocalizationMixin
    implements IFeatureExampleWM {
  /// {@macro feature_example_wm.class}
  FeatureExampleWM(super._model);
}
