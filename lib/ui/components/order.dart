import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  String orderText;

  Order({super.key, required this.orderText});

  @override
  Widget build(BuildContext context) {
    return Text(
      orderText,
      textAlign: TextAlign.start,
    );
  }
}
