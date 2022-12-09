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
    
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                Strings.lanceODado,
                style: TextStyle(
                  fontSize: 15,
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
                padding: const EdgeInsets.only(top: 8.0),
                child: Card(
                  color: tema.cardTheme.color,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.coffee,
                        size: 260.0,
                      ),
                      Text(
                        '99',
                        style: TextStyle(
                          fontSize: 64,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
                    ]
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}