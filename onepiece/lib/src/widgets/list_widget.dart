import 'package:flutter/material.dart';

// Definición de un widget Stateful llamado Listpjs
class Listpjs extends StatefulWidget {
  const Listpjs({
    super.key,
  }); // Constructor del widget que pasa la clave super.key

  @override
  State<Listpjs> createState() => _ListpjsState();
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
      // Añadir un espaciado de 25 píxeles alrededor del ListView
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text("Portadas", style: tituloStyletext),
          const SizedBox(height: 15),
          Row(
            // Usamos un Row para organizar las imágenes horizontalmente
            // Añadir un espacio entre las imágenes (3% del ancho de la pantalla)
            children: [
              bloquesPortada("p1.jpg", "titulo: ", "2018"),
              SizedBox(width: widthscreen * 0.03),
              bloquesPortada("p2.jpg", "titulo: ", "2022"),
              SizedBox(width: widthscreen * 0.03),
              bloquesPortada("p3.jpg", "titulo: ", "2023"),
            ],
          ),
          //Linea divisora (division)
          const Divider(
            thickness: 1, //da la altura
            color: Colors.white,
          ),
          // Espacio debajo de la imagen de 20 píxeles
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Función que devuelve una columna con una imagen y un título/subtítulo debajo
  Column bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        // ClipRRect para redondear las esquinas de la imagen
        // Bordes redondeados con un radio de 18
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          // Cargar la imagen desde la carpeta assets
          child: Image.asset(
            "assets/$image",
            // El ancho de la imagen será el 31% del ancho de la pantalla
            // Altura fija de 110 píxeles
            width: widthscreen * 0.31,
            height: 110,
            // Ajustar la imagen para que cubra completamente el contenedor sin distorsionar
            fit: BoxFit.cover,
          ),
        ),
        // Espacio debajo de la imagen de 15 píxeles
        const SizedBox(height: 15),
        RichText(
          text: TextSpan(
            text: titulo,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
            children: [
              TextSpan(
                text: subtitulo,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
