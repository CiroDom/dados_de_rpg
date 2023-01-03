import 'package:dados_de_rpg/res/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/selecao_dados_page.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatefulWidget {
  const Aplicativo({super.key});
  @override
  State<Aplicativo> createState() => AplicativoState();
}//end DadosRPGApp

class AplicativoState extends State<Aplicativo> {
  static bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TemaProvider(),
      builder: (context, _) {
        final providerTema = Provider.of<TemaProvider>(context);

        return MaterialApp(
          //debug
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,
          //aparência
          themeMode: providerTema.modoTema,
          theme: Temas.modo_light,
          darkTheme: Temas.modo_dark,
          //principal
          home: SelecaoDadosPage(),
        );
      },
    );
  }//end override build
}//end ApplicationState