import 'package:dados_de_rpg/pages/04_rolagem_dado_page.dart';
import 'package:dados_de_rpg/pages/06_rolagem_dado_page.dart';
import 'package:dados_de_rpg/pages/10_rolagem_dado_page.dart';
import 'package:dados_de_rpg/pages/20_rolagem_dado_page.dart';
import 'package:dados_de_rpg/res/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../componentes/indicador_pagina.dart';
import '../pages/12_rolagem_dado_page.dart';
import '../pages/selecao_dados_page.dart';
import '../res/strings.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatefulWidget {
  const Aplicativo({super.key});
  @override
  State<Aplicativo> createState() => AplicativoState();
}//end DadosRPGApp

class AplicativoState extends State<Aplicativo> {
  static ThemeData tema = Temas.modo_light;
  static bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debug
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      //aparência
      theme: tema = isSwitched? Temas.modo_dark : Temas.modo_light,
      //principal
      home: SelecaoDadosPage(),
    );
  }//end override build
}//end ApplicationState