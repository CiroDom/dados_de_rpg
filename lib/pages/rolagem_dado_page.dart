import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../res/strings.dart';

class RolagemDadoPage extends StatefulWidget {
  const RolagemDadoPage({super.key});

  @override
  State<RolagemDadoPage> createState() => _RolagemDadoPageState();
}//end class RolagemDado

class _RolagemDadoPageState extends State<RolagemDadoPage> {
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
      child: Column(
        children: [
          Container(
            height: 40,
            color: tema.backgroundColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Strings.lanceODado,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: tema.backgroundColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Card(
                    color: tema.cardTheme.color,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: (){},
                              child: Text('Exemplo'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}