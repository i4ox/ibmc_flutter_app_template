import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ibmc_flutter_app_template/l10n/app_localizations.g.dart';

/// {@template app.class}
/// Application.
/// {@endtemplate}
class App extends StatefulWidget {
  /// {@macro app.class}
  const App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello, Flutter",
          ),
        ),
      ),

      /// Localization.
      locale: _localizations.firstOrNull,
      localizationsDelegates: _localizationsDelegates,
      supportedLocales: _localizations,
    );
  }
}

const _localizations = [
  Locale('en', 'EN'),
  Locale('ru', 'RU'),
];

const _localizationsDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
