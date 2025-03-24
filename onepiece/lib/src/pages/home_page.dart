import 'package:flutter/material.dart';
import 'package:onepiece/src/widgets/header_widget.dart';
import 'package:onepiece/src/widgets/list_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16), // Fondo oscuro
      body: Column(
        children: <Widget>[
          Headerwidget(), // Widget que contiene el encabezado
          Listpjs(), // Widget que muestra una lista de personajes o elementos
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 95, 25, 208),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
