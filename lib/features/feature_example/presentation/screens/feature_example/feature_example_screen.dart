import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/presentation/screens/feature_example/feature_example_wm.dart';

/// {@template feature_example_screen.class}
/// FeatureExampleScreen.
/// {@endtemplate}
class FeatureExampleScreen extends ElementaryWidget<IFeatureExampleWM> {
  /// {@macro feature_example_screen.class}
  const FeatureExampleScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultFeatureExampleWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IFeatureExampleWM wm) {
    return Scaffold(
      body: Center(
        child: Text(
          wm.l10n.string("Flutter"),
        ),
      ),
    );
  }
}
