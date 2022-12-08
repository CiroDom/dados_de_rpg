import 'package:dados_de_rpg/res/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/rolagem_dado_page.dart';
import '../pages/selecao_dados_page.dart';
import '../res/strings.dart';

void main() => runApp(Application());

class Application extends StatefulWidget {
  const Application({super.key});
  @override
  State<Application> createState() => ApplicationState();
}//end DadosRPGApp

class ApplicationState extends State<Application> {
  bool isSwitched = false;
  ThemeData tema = Temas.modo_light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debug
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      //aparência
      theme: tema = isSwitched? Temas.modo_dark : Temas.modo_light,
      //principal
      home: Scaffold(
        backgroundColor: tema.scaffoldBackgroundColor,
        //principal
        appBar: AppBar(
          title: Text(
              Strings.nomeDoApp,
              style: TextStyle(
                color: tema.primaryColor,
                fontSize: 22,
              )
          ),
          actions: [
            Switch(
              activeColor: tema.primaryColor,
              value: isSwitched,
              onChanged: (value){
                setState(() {
                  isSwitched = !isSwitched;
                });
              }
            ),
          ],
        ),
        body: Container(
          color: tema.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20, bottom: 20,
              left: 10, right: 10,
            ),
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                SelecaoDadosPage(),
                RolagemDadoPage(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80.0,
          color: tema.backgroundColor,
        ),
      ),
    );
  }//end override build
}//end ApplicationState