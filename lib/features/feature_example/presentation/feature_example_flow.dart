import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ibmc_flutter_app_template/common/di/di_scope.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/data/repositories/feature_example_repository.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/di/feature_example_scope.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/presentation/screens/feature_example/feature_example_screen.dart';

/// {@template feature_example_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class FeatureExampleFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro feature_example_flow.class}
  const FeatureExampleFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = FeatureExampleRepository();

    return DiScope<IFeatureExampleScope>(
      factory: (context) => FeatureExampleScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const FeatureExampleScreen();
  }
}
