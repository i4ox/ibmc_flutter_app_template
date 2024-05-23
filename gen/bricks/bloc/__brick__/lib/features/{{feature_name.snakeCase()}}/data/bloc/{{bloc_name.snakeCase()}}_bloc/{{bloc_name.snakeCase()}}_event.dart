import 'package:equatable/equatable.dart';

/// {@template {{name.snakeCase()}}_repository.class}
/// Event for [{{bloc_name.pascalCase()}}Bloc].
/// {@endtemplate}
abstract class Base{{bloc_name.pascalCase()}}Event extends Equatable {
  @override
  List<Object?> get props => [];

  /// {@macro {{bloc_name.snakeCase()}}_event.class}
  const Base{{bloc_name.pascalCase()}}Event();
}