import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    //drawerTheme
    drawerTheme: const DrawerThemeData(
      shape: BeveledRectangleBorder(),
    ),
    //appbarTheme
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      //appbarTextStyle
      titleTextStyle: TextStyle(
        letterSpacing: 12,
        fontSize: 22,
        color: Colors.black,
      ),
      //appbarIconStyle
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    //textThemes
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        letterSpacing: 5,
      ),
    ),
    //otherThemes
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Colors.red.shade500,
      secondary: Colors.blue.shade500,
      tertiary: Colors.blue.shade500,
      inversePrimary: Colors.blue.shade500,
    ));
