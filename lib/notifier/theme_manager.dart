import 'package:cloudreve_flutter/utils/sp_util.dart';
import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  init() {
    SpUtil.getValue("themeMode").then((value) {
      _themeMode = value == "dark" ? ThemeMode.dark : ThemeMode.light;
    });
  }

  ThemeMode get themeMode => _themeMode;

  set setThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    SpUtil.saveValue(
      "themeMode",
      _themeMode == ThemeMode.dark ? "dark" : "light",
    );
    notifyListeners();
  }
}
