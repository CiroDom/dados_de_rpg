import 'dart:async';
import 'dart:math';

import 'package:dados_rpg/ui/res/dice_styles.dart';
import 'package:flutter/material.dart';

class ResultAnimation extends StatefulWidget {
  final int result;

  const ResultAnimation({super.key, required this.result});

  @override
  State<ResultAnimation> createState() => _ResultAnimationState();
}

class _ResultAnimationState extends State<ResultAnimation> {
  int numberToShow = 0;
  Timer? ourTimer;

  void startAnimation() {
    const duration = Duration(milliseconds: 50);
    final random = Random();

    ourTimer = Timer.periodic(duration, (timer) {
      setState(() {
        numberToShow = random.nextInt(widget.result + 1);
      });
      if (numberToShow == widget.result) {
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  void dispose() {
    ourTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      numberToShow.toString(),
      style: DiceStyles.resultTextStyle,
    );
  }
}
