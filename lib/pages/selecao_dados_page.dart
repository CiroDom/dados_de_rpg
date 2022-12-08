import 'dart:ui';

import 'package:dados_de_rpg/res/strings.dart';
import 'package:flutter/material.dart';

class SelecaoDadosPage extends StatefulWidget {
  const SelecaoDadosPage({super.key});

  @override
  State<SelecaoDadosPage> createState() => _SelecaoDadosPageState();
} //end DadosRPGApp

class _SelecaoDadosPageState extends State<SelecaoDadosPage> {
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    double tamanhoFonte = 15;
    double elevacao = 3;

    return Column(
      children: [
        Container(
          height: 40,
          color: tema.backgroundColor,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  Strings.selecioneDado,
                  style: TextStyle(
                    fontSize: tamanhoFonte,
                  ),
                ),
              )),
        ),
        Expanded(
            child: Stack(children: [
          Container(
            color: tema.backgroundColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Card(
                    elevation: elevacao,
                    color: tema.cardTheme.color,
                    child: Row(
                      children: [
                        Text(
                          'D4 (quatro lados',
                          style: TextStyle(
                            fontSize: tamanhoFonte
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: elevacao,
                    color: tema.cardTheme.color,
                    child: Row(
                      children: [
                        Text(
                          'D6 (seis lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: elevacao,
                    color: tema.cardTheme.color,
                    child: Row(
                      children: [
                        Text(
                          'D8 (oito lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: elevacao,
                    color: tema.cardTheme.color,
                    child: Row(
                      children: [
                        Text(
                          'D10 (dez lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: elevacao,
                    color: tema.cardTheme.color,
                    child: Row(
                      children: [
                        Text(
                          'D12 (doze lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: elevacao,
                    color: tema.cardTheme.color,
                    child: Row(
                      children: [
                        Text(
                          'D20 (vinte lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ])),
      ],
    );
  } //end build
}//end _DadosRPGAppState


