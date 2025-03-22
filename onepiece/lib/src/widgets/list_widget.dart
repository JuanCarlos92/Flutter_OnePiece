import 'package:flutter/material.dart';

// Definición de un widget Stateful llamado Listpjs
class Listpjs extends StatefulWidget {
  const Listpjs({
    super.key,
  }); // Constructor del widget que pasa la clave super.key

  @override
  State<Listpjs> createState() => _ListpjsState(); // Crea el estado asociado a este widget
}

// Clase privada que gestiona el estado del widget Listpjs
class _ListpjsState extends State<Listpjs> {
  double widthscreen = 0;
  // Estilo de texto para el título, con tamaño 16, negrita y color blanco
  final tituloStyletext = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    // Obtener el ancho de la pantalla actual y restar 50 píxeles para ajustarlo a los márgenes
    widthscreen = MediaQuery.of(context).size.width - 50;

    return Expanded(
      // El widget Expanded asegura que este widget ocupe el espacio disponible
      child: ListView(
        padding: const EdgeInsets.all(
          25,
        ), // Añadir un espaciado de 25 píxeles alrededor del ListView
        children: [
          Text(
            "Portadas",
            style: tituloStyletext,
          ), // Título de la sección "Portadas" con el estilo definido anteriormente
          Row(
            // Usamos un Row para organizar las imágenes horizontalmente
            children: [
              bloquesPortada("p1.jpg", "titulo", "subtitulo"),
              SizedBox(
                width: widthscreen * 0.03,
              ), // Añadir un espacio entre las imágenes (3% del ancho de la pantalla)
              bloquesPortada("p2.jpg", "titulo", "subtitulo"),
              SizedBox(width: widthscreen * 0.03),
              bloquesPortada("p3.jpg", "titulo", "subtitulo"),
            ],
          ),
        ],
      ),
    );
  }

  // Función que devuelve una columna con una imagen y un título/subtítulo debajo
  Column bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        // ClipRRect para redondear las esquinas de la imagen
        ClipRRect(
          borderRadius: BorderRadius.circular(
            18,
          ), // Bordes redondeados con un radio de 18
          child: Image.asset(
            "assets/$image", // Cargar la imagen desde la carpeta assets
            width:
                widthscreen *
                0.31, // El ancho de la imagen será el 31% del ancho de la pantalla
            height: 110, // Altura fija de 110 píxeles
            fit:
                BoxFit
                    .cover, // Ajustar la imagen para que cubra completamente el contenedor sin distorsionar
          ),
        ),
        const SizedBox(height: 15), // Espacio debajo de la imagen de 15 píxeles
      ],
    );
  }
}
