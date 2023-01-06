import 'package:flutter/material.dart';
import 'package:personal_portfolio/gen/fonts.gen.dart';
import 'package:personal_portfolio/home/home_page.dart';
import 'package:personal_portfolio/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: FontFamily.quicksand,
        backgroundColor: const Color(0xFFF7F8FA),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          titleSpacing: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Color(0xFF50AFC0),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF50AFC0),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(),
    );
  }
}
