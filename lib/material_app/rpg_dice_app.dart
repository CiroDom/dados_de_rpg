import 'package:dados_rpg/core/provider_models/theme_model.dart';
import 'package:dados_rpg/core/presenters/selelection_presenter.dart';
import 'package:dados_rpg/core/repos/dice_list_repo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ui/res/dice_theme.dart';
import '../ui/res/dice_strings.dart';
import '../ui/views/selection_view.dart';

class RpgDiceApp extends StatefulWidget {
  const RpgDiceApp({super.key});

  @override
  State<RpgDiceApp> createState() => _RpgDiceAppState();
}

class _RpgDiceAppState extends State<RpgDiceApp> {

  @override
  Widget build(BuildContext context) {
    final repo = DiceListRepo();
    final presenter = SelectionPresenter(repo: repo);
    ThemeMode _diceThemeMode = Provider.of<ThemeModel>(context, listen: true).getThemeMode;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _diceThemeMode,
      theme: DiceTheme.light,
      darkTheme: DiceTheme.dark,
      title: DiceStrings.title,
      home: SelectionView(
        presenter: presenter,),
    );
  }
}
