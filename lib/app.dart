import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'colors.dart';

class ShrineApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      home: HomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      theme: _kShrineTheme,
      debugShowCheckedModeBanner: false,
    );
  }

  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kShrineBrown900,
    primaryColor: kShrinePink100,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: kShrineBrown900,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: kShrinePink100,
        onPrimary: kShrineBrown900,
      ),
    ),
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    cardColor: kShrineBackgroundWhite,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: kShrinePink100,
    ),
    errorColor: kShrineErrorRed,
  );
}
