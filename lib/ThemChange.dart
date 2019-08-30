import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeModel with ChangeNotifier {
  ThemeData _theme = ThemeData.fallback();

  getTheme() => _theme;
  setTheme(ThemeData t) => _theme = t;

  void toggeleTheme() {
    if (_theme == ThemeData.dark()) {
      _theme = ThemeData.light();
    } else if (_theme == ThemeData.light()) {
      _theme = ThemeData.dark();
    }
    notifyListeners();
  }

  bool changeTheme(bool v) {
    if (v == true) {
      setTheme(ThemeData.light());
    } else if (v == false) {
      setTheme(_theme = ThemeData.dark());
    }
    // notifyListeners();
    return v;
  }
}
