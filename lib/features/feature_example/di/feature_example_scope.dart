import 'package:ibmc_flutter_app_template/features/feature_example/data/repositories/feature_example_repository.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/domain/repositories/i_feature_example_repository.dart';
import 'package:ibmc_flutter_app_template/common/utils/disposable_object/disposable_object.dart';
import 'package:ibmc_flutter_app_template/common/utils/disposable_object/i_disposable_object.dart';

/// {@template feature_example_scope.class}
/// Implementation of [IFeatureExampleScope].
/// {@endtemplate}
final class FeatureExampleScope extends DisposableObject implements IFeatureExampleScope {
  @override
  late final IFeatureExampleRepository repository;

  /// Factory constructor for [IFeatureExampleScope].
  factory FeatureExampleScope.create() {
    return FeatureExampleScope(const FeatureExampleRepository());
  }

  /// {@macro feature_example_scope.class}
  FeatureExampleScope(this.repository);
}

/// Scope dependencies of the FeatureExample feature.
abstract interface class IFeatureExampleScope implements IDisposableObject {
  /// FeatureExampleRepository.
  IFeatureExampleRepository get repository;
}
