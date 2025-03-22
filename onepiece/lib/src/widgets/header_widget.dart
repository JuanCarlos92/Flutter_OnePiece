import 'package:flutter/material.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      height: 170.0,
      decoration: BoxDecoration(
        color:Color.fromARGB(255, 41, 40, 39)
      ),
    );
  }
}