import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get examplesTitle => 'Examples';

  @override
  String string(String name) {
    return 'Hello, $name!';
  }
}
