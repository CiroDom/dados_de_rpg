import 'dart:ui';

import 'package:dados_de_rpg/pages/04_rolagem_dado_page.dart';
import 'package:dados_de_rpg/pages/20_rolagem_dado_page.dart';
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
    double tamanhoFonte = 15.0;
    double elevacao = 3.0;
    double tamanhoIconeCard = 35.0;
    double margemLateralRow = 16.0;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                Strings.selecioneDado,
                style: TextStyle(
                  fontSize: tamanhoFonte,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: [
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
                      child: GestureDetector(
                        onDoubleTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RolagemDado04Page())
                        );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: margemLateralRow, right: margemLateralRow),
                              child: Image.asset("assets/d4.png", height: 45, width: 45,),
                            ),
                            Text(
                              "D4 (quatro lados)",
                              style: TextStyle(
                                fontSize: tamanhoFonte,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: Card(
                    elevation: elevacao,
                    color: tema.cardTheme.color,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: margemLateralRow, right: margemLateralRow),
                          child: Image.asset("assets/d6.png", height: 45, width: 45,),
                        ),
                        Text(
                          'D6 (seis lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte,
                            fontWeight: FontWeight.w400,
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
                        Padding(
                          padding: EdgeInsets.only(left: margemLateralRow, right: margemLateralRow),
                          child: Image.asset("assets/d8.png", height: 45, width: 45,),
                        ),
                        Text(
                          'D8 (oito lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte,
                            fontWeight: FontWeight.w400,
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
                        Padding(
                          padding: EdgeInsets.only(left: margemLateralRow, right: margemLateralRow),
                          child: Image.asset("assets/d10.png", height: 45, width: 45,),
                        ),
                        Text(
                          'D10 (dez lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte,
                            fontWeight: FontWeight.w400,
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
                        Padding(
                          padding: EdgeInsets.only(left: margemLateralRow, right: margemLateralRow),
                          child: Image.asset("assets/d12.png", height: 45, width: 45,),
                        ),
                        Text(
                          'D12 (doze lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte,
                            fontWeight: FontWeight.w400,
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
                        Padding(
                          padding: EdgeInsets.only(left: margemLateralRow, right: margemLateralRow),
                          child: Image.asset("assets/d20.png", height: 45, width: 45,),
                        ),
                        Text(
                          'D20 (vinte lados)',
                          style: TextStyle(
                            fontSize: tamanhoFonte,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ]),
        ),
      ],
    );
  } //end build
}//end _DadosRPGAppState


