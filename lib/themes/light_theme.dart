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
      letterSpacing: 10,
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
      letterSpacing: 4,
    ),
    titleMedium: TextStyle(
      letterSpacing: 2,
    ),
    titleLarge: TextStyle(
      letterSpacing: 1,
    ),
  ),
  //otherThemes
  colorScheme: ColorScheme.light(
    primary: Colors.red.shade500,
    secondary: Colors.blue.shade500,
    tertiary: Colors.blue.shade500,
    inversePrimary: Colors.blue.shade500,
  ),
);
