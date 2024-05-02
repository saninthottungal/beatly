import 'package:beatly/themes/dark_theme.dart';
import 'package:beatly/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme = lightTheme;

  set setCurrentTheme(bool value) {
    currentTheme = value ? darkTheme : lightTheme;
    notifyListeners();
  }

  bool get isDarkMode => currentTheme == lightTheme ? false : true;
}
