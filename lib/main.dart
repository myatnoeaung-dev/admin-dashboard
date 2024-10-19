import 'package:admin_dashboard/app_theme.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'main_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme(lightDynamic),
        darkTheme: AppTheme.lightTheme(darkDynamic),
        themeMode: ThemeMode.dark,
        home: const MainScaffold(
          child: HomePage(),
        ),
      );
    });
  }
}
