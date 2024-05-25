import 'package:elementary/elementary.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/domain/repositories/i_feature_example_repository.dart';
import 'package:ibmc_flutter_app_template/features/feature_example/presentation/screens/feature_example/feature_example_screen.dart';

/// {@template feature_example_model.class}
/// [ElementaryModel] for [FeatureExampleScreen].
/// {@endtemplate}
final class FeatureExampleModel extends ElementaryModel {
  // ignore: unused_field
  final IFeatureExampleRepository _repository;

  /// {@macro feature_example_model.class}
  FeatureExampleModel({
    required IFeatureExampleRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
