
import 'package:dados_rpg/ui/res/dice_colors.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final bool isInitialPage;

  const PageIndicator({super.key, required this.isInitialPage});

  @override
  Widget build(BuildContext context) {
    const colorOn = DiceColors.primary;
    const colorOff = Color(0xffC4C4C4);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isInitialPage ? colorOn : colorOff,
          ),
        ),
        const SizedBox(
          width: 8,
          height: 20,
        ),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isInitialPage ? colorOff : colorOn,
          ),
        ),
      ],
    );
  }
}