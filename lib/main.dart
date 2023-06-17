import 'package:flutter/material.dart';
import 'package:flutter_light_and_dark_app/theme/custom_theme_data.dart';
import 'package:flutter_light_and_dark_app/theme/custom_theme_mode.dart';
import 'package:flutter_light_and_dark_app/main_page.dart';

void main() {
  CustomThemeMode.instance;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: CustomThemeMode.themeMode,
        builder: (context, mode, child) {
          return MaterialApp(
            darkTheme: CustomThemeData.dark,
            theme: CustomThemeData.light,
            themeMode: mode,
            home: const MainPage(),
          );
        });
  }
}
