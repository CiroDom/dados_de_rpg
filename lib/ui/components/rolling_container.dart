import 'package:dados_rpg/core/presenters/rolling_presenter.dart';
import 'package:flutter/material.dart';
import '../res/dice_colors.dart';
import '../res/dice_strings.dart';
import '../res/dice_styles.dart';

class RollingContainer extends StatelessWidget {
  const RollingContainer({
    super.key,
    required this.currentTheme,
    required this.roll,
    required this.back,
    required this.numberOfSides,
    required this.presenter,
  });

  final VoidCallback roll;
  final VoidCallback back;
  final int numberOfSides;
  final ThemeData currentTheme;
  final RollingPresenter presenter;

  @override
  Widget build(BuildContext context) {
    const double widthButton = 135.0;
    const double heightButton = 40.0;
    const double insideSizedBoxHeight = 70.0;
    final bool fourSidesDice = numberOfSides == 4;
    bool wasThrown = presenter.getWasThrown;

    return Container(
      decoration: BoxDecoration(
          color: currentTheme.brightness == Brightness.light
              ? DiceColors.backgroundLight
              : DiceColors.backgroundDark,
          borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: insideSizedBoxHeight),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/d$numberOfSides.png',
                width: 220,
                height: 220,
              ),
              AnimatedBuilder(
                  animation: presenter,
                  builder: (context, child) {
                    return fourSidesDice
                        ? Column(
                            children: [
                              const SizedBox(
                                height: 11.0,
                              ),
                              Text(
                                presenter.getToShow,
                                style: DiceStyles.resultTextStyle,
                              ),
                            ],
                          )
                        : Text(
                            presenter.getToShow,
                            style: DiceStyles.resultTextStyle,
                          );
                  }),
            ],
          ),
          const SizedBox(height: insideSizedBoxHeight),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: widthButton,
                    height: heightButton,
                    child: ElevatedButton(
                      style: DiceStyles.rollButtonStyle,
                      onPressed: wasThrown ? null : roll,
                      child: Text(DiceStrings.buttonRoll),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                    height: heightButton,
                  ),
                  SizedBox(
                    width: widthButton,
                    height: heightButton,
                    child: OutlinedButton(
                      style: DiceStyles.backButtonStyle,
                      onPressed: back,
                      child: Text(DiceStrings.buttonBack),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 11.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
