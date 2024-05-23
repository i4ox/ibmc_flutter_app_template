import 'package:equatable/equatable.dart';

/// {@template {{name.snakeCase()}}_repository.class}
/// State for [{{bloc_name.pascalCase()}}Bloc].
/// {@endtemplate}
abstract class Base{{bloc_name.pascalCase()}}State extends Equatable {
  @override
  List<Object?> get props => [];

  /// {@macro {{bloc_name.snakeCase()}}_state.class}
  const Base{{bloc_name.pascalCase()}}State();
}

/// Initial state for [{{bloc_name.pascalCase()}}Bloc]
class Init{{bloc_name.pascalCase()}}State extends Base{{bloc_name.pascalCase()}}State {}