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
      debugShowCheckedModeBanner: false,  // Desactiva la bandera de modo de depuración
      title: "main",  // Título aplicación
      home: Home(),  // La página principal es 'Home'
    );
  }
}

