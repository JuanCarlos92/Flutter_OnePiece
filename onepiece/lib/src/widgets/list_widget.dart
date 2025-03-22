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
          Row(children: [bloquesPortada("p1.jpg", "titulo", "subtitulo")]),
        ],
      ),
    );
  }

  Column bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      //Almacena imagenes y peudes ponerle borde a las imgs
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset("assets/$image"),
        ),
      ],
    );
  }
}
