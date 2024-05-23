import 'package:ibmc_flutter_app_template/features/{{name.snakeCase()}}/domain/repositories/i_{{name.snakeCase()}}_repository.dart';

/// {@template {{name.snakeCase()}}_repository.class}
/// Implementation of [I{{name.pascalCase()}}Repository].
/// {@endtemplate}
final class {{name.pascalCase()}}Repository implements I{{name.pascalCase()}}Repository {
  const {{name.pascalCase()}}Repository();
}