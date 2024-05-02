import 'package:beatly/providers/settings_provider/theme_provider.dart';
import 'package:beatly/screens/screen_home/screen_home.dart';
import 'package:beatly/screens/screen_settings/screen_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ThemeProvider>().currentTheme,
      //darkTheme: darkTheme,
      routes: {
        '/': (context) => const ScreenHome(),
        '/settings': (context) => const ScreenSettings(),
      },
    );
  }
}
