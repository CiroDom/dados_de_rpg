import 'package:dados_rpg/ui/res/dice_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DiceTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      elevation: 2,
      color: DiceColors.bodyLight,
      iconTheme: IconThemeData(
        color: DiceColors.primary
      ),
      titleTextStyle: TextStyle(
        color: DiceColors.primary,
        fontFamily: 'Roboto',
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: DiceColors.primary,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    scaffoldBackgroundColor: DiceColors.bodyLight,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: DiceColors.textLight,
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyText2: TextStyle(
        color: DiceColors.textLight,
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w500
      )
    )
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      elevation: 2,
      color: DiceColors.bodyDark,
      iconTheme: IconThemeData(
        color: DiceColors.primary
      ),
      titleTextStyle: TextStyle(
        color: DiceColors.primary,
        fontFamily: 'Roboto',
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: DiceColors.primary,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    scaffoldBackgroundColor: DiceColors.bodyDark,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: DiceColors.textDark,
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyText2: TextStyle(
        color: DiceColors.textDark,
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w500
      )
    )
  );
}
