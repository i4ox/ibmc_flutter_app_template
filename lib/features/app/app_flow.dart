import 'package:flutter/material.dart';
import 'package:ibmc_flutter_app_template/common/di/di_scope.dart';
import 'package:ibmc_flutter_app_template/features/app/app.dart';
import 'package:ibmc_flutter_app_template/features/app/di/i_app_scope.dart';
import 'package:ibmc_flutter_app_template/features/navigation/app_router.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

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
    return Nested(
      children: [
        DiScope<IAppScope>(factory: (_) => appScope),
        ChangeNotifierProvider<AppRouter>(create: (_) => AppRouter()),
      ],
      child: const App(),
    );
  }
}
