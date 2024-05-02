import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
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
      color: Colors.white,
    ),
    //appbarIconStyle
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  //textThemes
  textTheme: const TextTheme(
    //artist name
    bodyMedium: TextStyle(),
    //settings theme,
    labelLarge: TextStyle(
      fontSize: 20,
    ),
    //home widget heading,
    headlineSmall: TextStyle(
      letterSpacing: 1,
      fontWeight: FontWeight.w500,
    ),

    //song title,
    titleMedium: TextStyle(
      letterSpacing: 1,
    ),
    //drawer text,
    titleLarge: TextStyle(
      letterSpacing: 2,
      fontSize: 24,
    ),
  ),
  iconTheme: IconThemeData(
    color: Colors.red.shade300,
  ),

  //otherThemes
  colorScheme: ColorScheme.dark(
    primary: Colors.red.shade500,
    secondary: Colors.grey.shade400,
    tertiary: Colors.blue.shade500,
    inversePrimary: Colors.blue.shade500,
  ),
);
