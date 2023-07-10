import 'dart:math';

import 'package:flutter/material.dart';

class RollingPresenter extends ChangeNotifier {
  RollingPresenter({required this.diceNumber});

  final int diceNumber;

  int _result = 0;
  bool _wasThrown = false;
  final List<VoidCallback> _listeners = [];

  int get getResult => _result;
  bool get getWasThrown => _wasThrown;

  @override
  void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);
  }

  @override
  void notifyListeners() {
    for (final listener in _listeners) {
      listener.call();
    }
  }

  void backToBegin(BuildContext context) {
    Navigator.of(context).pop();
  }

  void throwDice() {
    _wasThrown = true;
    final random = Random();
    final randomResult = random.nextInt(diceNumber) + 1;

    _result = randomResult;
    notifyListeners();
  }
}
