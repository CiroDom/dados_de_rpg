import 'package:dados_rpg/ui/res/dice_styles.dart';
import 'package:flutter/material.dart';

class DiceButton extends StatelessWidget {
  final VoidCallback onClick;
  final int sideInt;
  final String sideAsset;
  final String sideName;

  const DiceButton(
      {super.key,
      required this.onClick, required this.sideInt, required this.sideAsset, required this.sideName,});

  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context);

    return ElevatedButton(
      style: currentTheme.brightness == Brightness.light
          ? DiceStyles.selectButtonStylesLight
          : DiceStyles.selectButtonStylesDark,
      onPressed: onClick,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 16,
            height: 61,
          ),
          Stack(alignment: Alignment.center, children: [
            Image.asset(
              sideAsset,
              width: 45.0,
              height: 45.0,
            ),
            Text(
              sideInt.toString(),
            )
          ]),
          const SizedBox(
            width: 16,
            height: 61,
          ),
          Text(
            sideName,
            style: currentTheme.brightness == Brightness.light
                ? DiceStyles.textSelectButtonStyleLight
                : DiceStyles.textSelectButtonStyleDark,
          )
        ],
      ),
    );
  }
}
