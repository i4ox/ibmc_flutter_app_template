import 'package:ibmc_flutter_app_template/config/url.dart';

/// {@template app_config.class}
/// Application configuration.
/// {@endtemplate}
class AppConfig {
  /// Server url
  final Url url;

  /// {@macro app_config.class}
  const AppConfig({
    required this.url,
  });
}
