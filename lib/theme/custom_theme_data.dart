import 'package:flutter/material.dart';

class CustomThemeData {
  static final ThemeData light = ThemeData(
    textTheme: textTheme.copyWith(
        subtitle1: textTheme.subtitle1?.copyWith(color: Colors.black)),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepOrange,
      titleTextStyle: textTheme.headline1?.copyWith(color: Colors.white),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.black,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.deepOrange,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.deepOrange,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 4)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 4)),
    ),
  );
  static final ThemeData dark = ThemeData(
    textTheme: textTheme.copyWith(
      subtitle1: textTheme.subtitle1?.copyWith(color: Colors.deepOrange),
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(31, 31, 31, 1),
    appBarTheme: AppBarTheme(
        backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
        titleTextStyle: textTheme.headline1?.copyWith(color: Colors.deepOrange),
        iconTheme: const IconThemeData(color: Colors.deepOrange)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromRGBO(41, 41, 41, 1),
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.white,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.white,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.white,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 4)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 4)),
    ),
  );

  static const TextTheme textTheme = TextTheme(
      headline1: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
      subtitle1: TextStyle(fontWeight: FontWeight.bold, color: Colors.black));
}
