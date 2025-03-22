import 'package:flutter/material.dart';

class Listpjs extends StatefulWidget {
  const Listpjs({super.key});

  @override
  State<Listpjs> createState() => _ListpjsState();
}

class _ListpjsState extends State<Listpjs> {
  double widthscreen = 0;
  final tituloStyletext = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    //Obtener ancho de la pantalla
    widthscreen = MediaQuery.of(context).size.width - 50;

    return Expanded(
      child: ListView(
        //Dar padding a la lista (imagenes)
        padding: const EdgeInsets.all(25),
        children: [
          Text("Portadas", style: tituloStyletext),
          Row(
            children: [
              bloquesPortada("p1.jpg", "titulo", "subtitulo"),
              SizedBox(width: widthscreen * 0.03),
              bloquesPortada("p2.jpg", "titulo", "subtitulo"),
              SizedBox(width: widthscreen * 0.03),
              bloquesPortada("p3.jpg", "titulo", "subtitulo"),
            ],
          ),
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
          child: Image.asset(
            "assets/$image",
            width: widthscreen * 0.31, //X3 imagenes
            height: 110,
            fit: BoxFit.cover, // Dar zoon a la img y se adapta al contenedor
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
