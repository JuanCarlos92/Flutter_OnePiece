import 'package:flutter/material.dart';
import 'package:onepiece/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Desactiva la bandera de modo de depuración
      debugShowCheckedModeBanner: false,
      title: "main",
      home: Home(), // La página principal es 'Home'
    );
  }
}
