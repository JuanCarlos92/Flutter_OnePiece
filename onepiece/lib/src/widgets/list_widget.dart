import 'package:flutter/material.dart';

class Listpjs extends StatefulWidget {
  const Listpjs({super.key});

  @override
  State<Listpjs> createState() => _ListpjsState();
}

class _ListpjsState extends State<Listpjs> {
  final tituloStyletext = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Text("Portadas", style: tituloStyletext),
        ],
      ),
    );
  }
}
