import 'package:dados_de_rpg/res/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwitchButtonTema extends StatelessWidget {
  const SwitchButtonTema({super.key});


  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<TemaProvider>(context);
    final tema = Theme.of(context);

    return Switch.adaptive(
      activeColor: tema.primaryColor,
      value: temaProvider.isModoDark,
      onChanged: (value) {
        final provider = Provider.of<TemaProvider>(context, listen: false);
        provider.mudarTema(value);
      },
    );
  }

}