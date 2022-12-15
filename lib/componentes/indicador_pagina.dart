import 'package:dados_de_rpg/principal/main.dart';
import 'package:flutter/material.dart';

class IndicadorPagina extends StatelessWidget {
  const IndicadorPagina({Key? key, required this.paginaAtiva}) : super(key: key);

  final int paginaAtiva;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: paginaAtiva == 0
                ? ApplicationState.tema.primaryColor
                : Colors.grey,
              borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          SizedBox(width: 4,),
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: paginaAtiva == 0
                ? Colors.grey
                : ApplicationState.tema.primaryColor,
                borderRadius: BorderRadius.circular(15.0)
            ),
          ),
        ],
      ),
    );
  }
}
