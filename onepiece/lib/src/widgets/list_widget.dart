import 'package:flutter/material.dart';
import "../pages/detail_page.dart";

// Definición de un widget Stateful llamado Listpjs
class Listpjs extends StatefulWidget {
  const Listpjs({super.key});

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

    // Expanded asegura que este widget ocupe el espacio disponible
    return Expanded(
      // Añadir un espaciado de 25 píxeles alrededor del ListView
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text("Portadas", style: tituloStyletext),
          const SizedBox(height: 15),

          // Row para organizar las imágenes horizontalmente
          Row(
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
          const Divider(thickness: 1, color: Colors.white),
          // Espacio de 20 píxeles
          const SizedBox(height: 20),

          bloquePersonajes("Brook", 0xff4913c4, "o1"),
          bloquePersonajes("Luffy", 0xffF82A2D, "o2"),
          bloquePersonajes("Portgas D. Ace", 0xffFFCB28, "o3"),
          bloquePersonajes("Boa Hancock", 0xffFE4649, "o4"),
          bloquePersonajes("Boa Hancock", 0xffDF1C6A, "o5"),
          bloquePersonajes("Roronoa Zoro", 0xff21e295, "o6"),
        ],
      ),
    );
  }

  Widget bloquePersonajes(String nombre, int color, String imagen) {
    //Detecta gestos
    return GestureDetector(
      onTap:
          () => {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder:
                    (context) => DetailPage(
                      color: color,
                      image: "assets/$imagen.png",
                      nombre: nombre,
                    ),
              ),
            ),
          },
      child: Container(
        //margen 20 unidades en la parte de abajo para cada elemento
        margin: EdgeInsets.only(bottom: 20),
        //padding 20 unidaddes a la izq y drch
        padding: EdgeInsets.symmetric(horizontal: 20),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(66, 92, 77, 77),
        ),
        height: 65,
        child: Row(
          // Espacio entre elementos
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    //Añadir sombras
                    boxShadow: [
                      //Difuminado -Desplazar sombra -Escalado de la sombra -Tipo de sombra
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 5),
                        //spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                        color: Color(color),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("assets/$imagen.png"),
                ),

                // Espacio de 12 píxeles
                SizedBox(width: 12),

                Text(
                  nombre,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            //Boton de 3 puntos
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert_rounded, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  // Función que devuelve una columna con una imagen y un título/subtítulo debajo
  Column bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        // ClipRRect para redondear las esquinas de la imagen
        ClipRRect(
          // Bordes redondeados con un radio de 18
          borderRadius: BorderRadius.circular(18),
          // Cargar la imagen desde la carpeta assets:
          // Ancho img  31% del ancho de la pantalla, altura 110 px
          // Ajustar la imagen cubra completamente el contenedor sin distorsionar
          child: Image.asset(
            "assets/$image",
            width: widthscreen * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),

        // Espacio  de 15 píxeles
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
