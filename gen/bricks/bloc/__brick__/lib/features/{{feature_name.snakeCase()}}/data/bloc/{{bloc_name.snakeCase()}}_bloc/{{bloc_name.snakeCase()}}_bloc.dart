import 'package:bloc/bloc.dart';
import 'package:ibmc_flutter_app_template/features/{{feature_name.snakeCase()}}/data/bloc/{{bloc_name.snakeCase()}}_bloc/{{bloc_name.snakeCase()}}_event.dart';
import 'package:ibmc_flutter_app_template/features/{{feature_name.snakeCase()}}/data/bloc/{{bloc_name.snakeCase()}}_bloc/{{bloc_name.snakeCase()}}_state.dart';
import 'package:ibmc_flutter_app_template/features/{{feature_name.snakeCase()}}/domain/repositories/i_{{feature_name.snakeCase()}}_repository.dart';

/// {@template {{name.snakeCase()}}_repository.class}
/// Bloc for [{{bloc_name.pascalCase()}}Repository].
/// {@endtemplate}
class {{bloc_name.pascalCase()}}Bloc extends Bloc<Base{{bloc_name.pascalCase()}}Event, Base{{bloc_name.pascalCase()}}State> {
  // ignore: unused_field
  final I{{bloc_name.pascalCase()}}Repository _{{bloc_name.camelCase()}}Repository;

  /// {@macro {{bloc_name.snakeCase()}}_bloc.class}
  {{bloc_name.pascalCase()}}Bloc(
    this._{{bloc_name.camelCase()}}Repository,
  ) : super(Init{{bloc_name.pascalCase()}}State()) {

  }
}