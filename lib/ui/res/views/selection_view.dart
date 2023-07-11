import 'package:dados_rpg/core/presenters/selelection_presenter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider_models/theme_model.dart';
import '../../components/order.dart';
import '../../components/page_indicator.dart';
import '../dice_colors.dart';
import '../dice_strings.dart';

class SelectionView extends StatelessWidget {
  const SelectionView({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  final SelectionPresenter presenter;

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16.0,
            ),
            Order(orderText: DiceStrings.select),
            const SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: presenter.buildDiceButtonsList(),
            ),
            const PageIndicator(isInitialPage: true),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
