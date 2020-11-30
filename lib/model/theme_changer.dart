import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {

  bool _darkTheme = false;
  bool _customTheme = false;

  ThemeData _currentTheme;

  bool get darkTheme => _darkTheme;
  bool get customTheme => _customTheme;
  ThemeData get currentTheme => _currentTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    _customTheme = false;
    if (value) {
      _currentTheme = ThemeData.dark();
    } else {
      _currentTheme = ThemeData.light();
    }
    notifyListeners();
  }

  set customTheme(bool value) {
    _darkTheme = false;
    _customTheme = value;
    if (value) {
      _currentTheme = ThemeData.light().copyWith(
        accentColor: Colors.purple,
        primaryColorLight: Colors.red,
      );
    } else {
      _currentTheme = ThemeData.light();
    }
    notifyListeners();
  }

  ThemeChanger(int theme) {
    switch(theme) {
      case 1 : //色ノーマルモード。
        _darkTheme = false;
        _customTheme = false;
        _currentTheme = ThemeData.light();
        break;
      case 2 : //Colors.purple
        _darkTheme = false;
        _customTheme = false;
        _currentTheme = ThemeData.dark().copyWith(
          accentColor: Colors.purple
        );
        break;
      default:
        _darkTheme = false;
        _currentTheme = ThemeData.light();
    }
  }


}