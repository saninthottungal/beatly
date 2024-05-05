import 'package:beatly/providers/settings_provider/theme_provider.dart';
import 'package:beatly/providers/song_provider/playlist_provider.dart';
import 'package:beatly/providers/song_provider/song_provider.dart';
import 'package:beatly/screens/screen_favorites/screen_favorites.dart';
import 'package:beatly/screens/screen_home/screen_home.dart';
import 'package:beatly/screens/screen_settings/screen_settings.dart';
import 'package:beatly/screens/screen_song/screen_song.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SongProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PlayListProvider(),
        ),
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
      routes: {
        '/': (context) => const ScreenHome(),
        '/settings': (context) => const ScreenSettings(),
        '/song': (context) => const ScreenSong(),
        '/favorites': (context) => const ScreenFavorites(),
      },
    );
  }
}
