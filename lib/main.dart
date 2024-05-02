import 'package:beatly/screens/screen_home/screen_home.dart';
import 'package:beatly/screens/screen_settings/screen_settings.dart';
import 'package:beatly/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      //darkTheme: darkTheme,
      routes: {
        '/': (context) => const ScreenHome(),
        '/settings': (context) => const ScreenSettings(),
      },
    );
  }
}
