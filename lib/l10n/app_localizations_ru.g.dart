import 'app_localizations.g.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get examplesTitle => 'Примеры';

  @override
  String string(String name) {
    return 'Привет, $name!';
  }
}
