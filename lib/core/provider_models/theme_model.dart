import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  ThemeMode _diceThemeMode = ThemeMode.light;
  bool _switchState = false;

  ThemeMode get getThemeMode => _diceThemeMode;
  bool get getSwitchState => _switchState;

  void darkModeOn(bool actived) {
    _switchState = actived;
    _diceThemeMode = actived ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
