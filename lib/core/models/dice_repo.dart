import '../../ui/res/dice_strings.dart';

class DiceListModel {
  final _dicesList = [4, 6, 8, 10, 12, 20];
  final _sidesStrings = DiceStrings.sidesNamesList;

  List<int> get getDicesList => _dicesList;

  List<String> get getSidesStrings => _sidesStrings;

  String getAsset(int index) {
    String assetString = 'assets/d4.png';
    if (index < getDicesList.length) {
      final numberOfSides = getDicesList[index];
      assetString = 'assets/d$numberOfSides.png';
    }
    return assetString;
  }
}
