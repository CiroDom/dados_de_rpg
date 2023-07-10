import 'package:dados_rpg/ui/res/dice_colors.dart';
import 'package:flutter/material.dart';

class DiceStyles {
  static final selectButtonStylesLight = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
    backgroundColor: const MaterialStatePropertyAll(
      DiceColors.backgroundLight,
    ),
  );

  static final selectButtonStylesDark = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
    backgroundColor: const MaterialStatePropertyAll(
      DiceColors.backgroundDark,
    ),
  );

  static final rollButtonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    backgroundColor: DiceColors.primary,
    shadowColor: const Color(0xffD5D6D9),
  );

  static final backButtonStyle = ButtonStyle(
    shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    side: const MaterialStatePropertyAll(
        BorderSide(color: DiceColors.primary)
    ),
    foregroundColor: const MaterialStatePropertyAll(
      DiceColors.primary,
    ),
    overlayColor: const MaterialStatePropertyAll(
      DiceColors.primary,
    ),
  );

  static const textSelectButtonStyleLight = TextStyle(
      color: DiceColors.textLight,
      fontFamily: 'Roboto',
      fontSize: 14,
      fontWeight: FontWeight.w400);

  static const textSelectButtonStyleDark = TextStyle(
      color: DiceColors.textDark,
      fontFamily: 'Roboto',
      fontSize: 14,
      fontWeight: FontWeight.w400);

  static const resultTextStyle = TextStyle(
    color: DiceColors.bodyLight,
    fontFamily: 'Roboto',
    fontSize: 70.4,
    fontWeight: FontWeight.w700,
  );
}
