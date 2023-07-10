import 'package:dados_rpg/core/presenters/rolling_presenter.dart';
import 'package:dados_rpg/core/repos/dice_list_repo.dart';
import 'package:dados_rpg/ui/views/rolling_view.dart';
import 'package:flutter/material.dart';

import '../../ui/res/dice_strings.dart';
import '../../ui/components/dice_button.dart';

class SelectionPresenter {
  final DiceListRepo repo;

  const SelectionPresenter({required this.repo});

  RollingPresenter createPresenter(int index) {
    final diceNumber = repo.getDicesList[index];

    return RollingPresenter(diceNumber: diceNumber);
  }

  void goToRollingPage(BuildContext context, int index) {
    final presenter = createPresenter(index);

    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => RollingView(
        presenter: presenter),
    ));
  }

  int getLenght() {
    final lenght = repo.getDicesList.length;

    return lenght;
  }

  int getNumber(int index) {
    int numberOfSides = 4;
    if (index < getLenght()) {
      numberOfSides = repo.getDicesList[index];
    }
    return numberOfSides;
  }

  String getAsset(int index) {
    final numberOfSides = getNumber(index);
    final assetString = 'assets/d$numberOfSides.png';

    return assetString;
  }

  String getSideName(int index) {
    final sideName = DiceStrings.sidesNamesList[index];

    return sideName;
  }

  ListView buildDiceButtonsList() {
    return ListView.separated(
      itemCount: getLenght(),
      itemBuilder: (context, index) => DiceButton(
        sideInt: getNumber(index),
        sideAsset: getAsset(index),
        sideName: getSideName(index),
        onClick: () => goToRollingPage(context, index),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 8.0,
      ),
    );
  }
}
