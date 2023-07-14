import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class RollingPresenter extends ChangeNotifier {
  RollingPresenter({required this.diceNumber});

  final int diceNumber;

  String _toShow = '?';
  bool _wasThrown = false;

  String get getToShow => _toShow;
  bool get getWasThrown => _wasThrown;

  void backToBegin(BuildContext context) {
    Navigator.of(context).pop();
  }

  int _throwDice() {
    _wasThrown = true;
    final random = Random();
    final randomResult = random.nextInt(diceNumber) + 1;

    return randomResult;
  }

  void startAnimation() {
    const duration = Duration(milliseconds: 50);
    final random = Random();
    final int result = _throwDice();

    Timer.periodic(duration, (timer) {
      _toShow = random.nextInt(diceNumber + 1).toString();

      if (int.parse(_toShow) == result) {
        timer.cancel();
      }
      notifyListeners();
    });
  }
}
