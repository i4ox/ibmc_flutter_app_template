import 'package:auto_route/auto_route.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/presentation/feature_example_flow.dart';
import 'package:ibmc_flutter_app_template/features/navigation/app_route_paths.dart';

part 'app_router.gr.dart';

/// {@template router.class}
/// Main point of the application navigation.
/// {@endtemplate}
@AutoRouterConfig(
  replaceInRouteName: 'Flow,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: FeatureExampleRoute.page,
          path: AppRoutePaths.featureExample,
          initial: true,
        ),
      ];
}
