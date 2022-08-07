import 'package:app_crypto/screens/home.dart';
import 'package:flutter/material.dart';

import 'config/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: const Home(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => const Home(),
        },
        themeMode: themeMode,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark);
  }
}
