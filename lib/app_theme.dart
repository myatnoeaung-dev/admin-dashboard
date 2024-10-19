import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(dynamicColor) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: dynamicColor ?? const Color.fromARGB(255, 183, 62, 58)),
      useMaterial3: true,
      navigationRailTheme: NavigationRailThemeData(
          indicatorShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
