
import 'package:flutter/material.dart';
import 'package:ibmc_flutter_app_template/features/app/app.dart';
import 'package:ibmc_flutter_app_template/features/app/di/i_app_scope.dart';

/// {@template app_flow.class}
/// Entry point for the application.
/// {@endtemplate}
class AppFlow extends StatelessWidget {
  /// {@macro app_flow.class}
  const AppFlow({
    super.key,
    required this.appScope,
  });

  /// {@macro app_scope.class}
  final IAppScope appScope;

  @override
  Widget build(BuildContext context) {
    // return Nested(
    //   children: [],
    //   child: const App(),
    // );
    return App();
  }
}