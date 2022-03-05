import 'package:flutter/material.dart';

ThemeData appTheme() {
  TextTheme _appTextTheme(TextTheme base) {
    return base.copyWith(
      headline6: base.headline6?.copyWith(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: const Color(0xff132022),
      ),
      headline5: base.headline6?.copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
      headline4: base.headline4?.copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        color: const Color(0xff35a07f),
      ),
    );
  }

  final ThemeData baseTheme = ThemeData.light();
  return baseTheme.copyWith(
    textTheme: _appTextTheme(baseTheme.textTheme),
    scaffoldBackgroundColor: Colors.grey[150],
    primaryColor: const Color(0xff35a07f),
    shadowColor: const Color(0xff3bb28e),
  );
}
