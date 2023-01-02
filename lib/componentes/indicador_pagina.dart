import 'package:dados_de_rpg/principal/main.dart';
import 'package:flutter/material.dart';

class IndicadorPagina extends StatelessWidget {
  const IndicadorPagina({Key? key, required this.isPaginaInicial}) : super(key: key);

  final bool isPaginaInicial;

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: isPaginaInicial == true
                ? tema.primaryColor
                : Colors.grey,
              borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          SizedBox(width: 4,),
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: isPaginaInicial == true
                ? Colors.grey
                : tema.primaryColor,
                borderRadius: BorderRadius.circular(15.0)
            ),
          ),
        ],
      ),
    );
  }
}
