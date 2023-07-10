import 'package:dados_rpg/core/presenters/rolling_presenter.dart';
import 'package:dados_rpg/ui/components/result_animation.dart';
import 'package:flutter/material.dart';

import '../res/dice_colors.dart';
import '../res/dice_strings.dart';
import '../res/dice_styles.dart';

class RollingContainer extends StatefulWidget {
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
  State<RollingContainer> createState() => _RollingContainerState();
}

class _RollingContainerState extends State<RollingContainer> {
  @override
  void initState() {
    super.initState();
    widget.presenter.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    widget.presenter.removeListener(() => setState(() {}));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double widthButton = 135.0;
    const double heightButton = 40.0;
    const double insideSizedBoxHeight = 70.0;
    final bool fourSidesDice = widget.numberOfSides == 4;
    bool wasThrown = widget.presenter.getWasThrown;

    return Container(
      decoration: BoxDecoration(
          color: widget.currentTheme.brightness == Brightness.light
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
                'assets/d${widget.numberOfSides}.png',
                width: 220,
                height: 220,
              ),
              fourSidesDice
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 11.0,
                        ),
                        wasThrown
                            ? ResultAnimation(
                                result: widget.presenter.getResult)
                            : Text(
                                DiceStrings.initialMark,
                                style: DiceStyles.resultTextStyle,
                              ),
                      ],
                    )
                  : wasThrown
                      ? ResultAnimation(result: widget.presenter.getResult)
                      : Text(
                          DiceStrings.initialMark,
                          style: DiceStyles.resultTextStyle,
                        ),
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
                      onPressed: wasThrown ? null : widget.roll,
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
                      onPressed: widget.back,
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
