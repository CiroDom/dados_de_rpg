import 'dart:math';

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

    double bordaVert = 12.0;
    double bordaHori = 54.0;

    String resultado = '?';

    void rolarDado() {
      Random random = Random();
      setState(() {
        resultado = random.nextInt(12).toString();
      });
    }

    
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
                        resultado,
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
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                                      (state) {
                                        return tema.primaryColor;
                                      }
                                  ),
                                  shape: MaterialStateProperty
                                      .resolveWith<OutlinedBorder?>(
                                    (states){
                                      return RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0));
                                    }
                                  ),
                                  padding: MaterialStateProperty
                                      .resolveWith<EdgeInsetsGeometry?>(
                                    (states) {
                                      return EdgeInsets.symmetric(
                                        horizontal: bordaHori,
                                        vertical: bordaVert,
                                      );
                                    }
                                  ),
                                ),
                                child: Text('Rolar'),
                                onPressed: rolarDado,
                              ),
                              SizedBox(width: 8.0,),
                              OutlinedButton(
                                style: ButtonStyle(
                                  side: MaterialStateProperty.resolveWith<BorderSide?>(
                                      (state) {
                                        return BorderSide(color: tema.primaryColor);
                                      }
                                  ),
                                  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                                      (state) {
                                        return tema.primaryColor;
                                      }
                                  ),
                                  shape: MaterialStateProperty
                                      .resolveWith<OutlinedBorder?>(
                                          (states){
                                        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0));
                                      }
                                  ),
                                  padding: MaterialStateProperty
                                      .resolveWith<EdgeInsetsGeometry?>(
                                          (states) {
                                        return EdgeInsets.symmetric(
                                          horizontal: bordaHori,
                                          vertical: bordaVert,
                                        );
                                      }
                                  ),

                                ),
                                child: Text(
                                  'Cancelar',
                                  style: TextStyle(
                                    color: tema.primaryColor,
                                  ),
                                ),
                                onPressed: () {},
                              ),
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