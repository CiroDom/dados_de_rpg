import 'package:dados_rpg/core/models/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'material_app/rpg_dice_app.dart';

void main() => runApp(ChangeNotifierProvider(
  create: (context) => ThemeModel(),
  child: const RpgDiceApp()));