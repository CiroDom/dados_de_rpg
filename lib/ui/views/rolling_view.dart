import 'package:dados_rpg/core/presenters/rolling_presenter.dart';
import 'package:dados_rpg/ui/components/order.dart';
import 'package:dados_rpg/ui/components/page_indicator.dart';
import 'package:dados_rpg/ui/res/dice_strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_models/theme_model.dart';
import '../components/rolling_container.dart';
import '../res/dice_colors.dart';

class RollingView extends StatelessWidget {
  const RollingView({
    super.key,
    required this.presenter,
  });

  final RollingPresenter presenter;

  @override
  Widget build(BuildContext context) {
    final ThemeData currentTheme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          DiceStrings.title,
        ),
        actions: [
          Switch(
            activeColor: DiceColors.primary,
            value:
                Provider.of<ThemeModel>(context, listen: false).getSwitchState,
            onChanged: (value) {
              Provider.of<ThemeModel>(context, listen: false).darkModeOn(value);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                Order(orderText: DiceStrings.roll),
                const SizedBox(
                  height: 16.0,
                ),
                RollingContainer(
                  currentTheme: currentTheme,
                  numberOfSides: presenter.diceNumber,
                  roll: presenter.startAnimation,
                  back: () => presenter.backToBegin(context),
                  presenter: presenter,
                )
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PageIndicator(isInitialPage: false),
                SizedBox(
                  height: 16.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
