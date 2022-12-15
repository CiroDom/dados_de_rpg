import 'dart:math';
import 'package:flutter/material.dart';
import '../res/strings.dart';

class RolagemDado04Page extends StatefulWidget {
  const RolagemDado04Page({super.key});

  @override
  State<RolagemDado04Page> createState() => _RolagemDado04PageState();
}//end class RolagemDado

class _RolagemDado04PageState extends State<RolagemDado04Page> {
  double bordaVert = 12.0;
  double bordaHori = 54.0;
  String resultado = '?';

  void rolarDado() {
    Random random = Random();
    String resultRandom = (random.nextInt(4) + 1).toString();
    setState(() {
      resultado = resultRandom;
    });
  }

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
                        Image.asset("assets/bg_d4.png", height: 220, width: 220,),
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
                            Padding(
                              padding: const EdgeInsets.only(bottom: 11.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color?>(
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
                                      fixedSize: MaterialStateProperty.resolveWith<Size?>(
                                        (states) {
                                          return Size(135, 40);
                                        }
                                      ),
                                    ),
                                    child: Text('Rolar'),
                                    onPressed: rolarDado,
                                  ),
                                  SizedBox(width: 8.0,),
                                  OutlinedButton(
                                    style: ButtonStyle(
                                      side: MaterialStateProperty
                                          .resolveWith<BorderSide?>(
                                            (state) {
                                              return BorderSide(color: tema.primaryColor);
                                            }
                                          ),
                                      foregroundColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                            (state) {
                                              return tema.primaryColor;
                                            }
                                          ),
                                      shape: MaterialStateProperty
                                          .resolveWith<OutlinedBorder?>(
                                            (states){
                                              return RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40.0)
                                              );
                                            }
                                          ),
                                      fixedSize: MaterialStateProperty
                                          .resolveWith<Size?>(
                                            (states) {
                                              return Size(135, 40);
                                            }
                                          )
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
                            ),
                          ],
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}