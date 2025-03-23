import 'package:flutter/material.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({
    super.key,
  }); // Constructor del widget. "super.key" es necesario para los widgets que heredan de StatelessWidget

  // Estilo de texto para el título: color blanco, negrita, tamaño de fuente 26
  final tituloTextStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 26,
  );

  // Estilo de texto para el subtítulo: color blanco, tamaño de fuente 17
  final subtituloTextStyle = const TextStyle(color: Colors.white, fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Alineación del contenido hacia la parte inferior y centrado
      alignment: Alignment.bottomCenter,
      // Espaciado interno de 25 píxeles alrededor del contenedor
      padding: const EdgeInsets.all(25.0),
      height: 120.0, // Altura del contenedor
      // Fondo de color
      decoration: BoxDecoration(color: Color.fromARGB(255, 41, 40, 39)),
      child: Row(
        // Los elementos del Row se distribuyen con el máximo espacio entre ellos
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Primera columna que contiene el título y subtítulo
          Column(
            // El tamaño de la columna se ajusta al contenido, no ocupa más espacio del necesario
            mainAxisSize: MainAxisSize.min,
            // Alineación de los elementos dentro de la columna hacia la izquierda
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("One piece", style: tituloTextStyle),
              Text("serie", style: subtituloTextStyle),
            ],
          ),
          // Segunda fila que contiene los botones de búsqueda y notificaciones
          Row(
            children: [
              // Primer contenedor
              Container(
                decoration: BoxDecoration(
                  // Bordes redondeados con radio de 15
                  borderRadius: BorderRadius.circular(15),
                  // Fondo negro con opacidad al 10%
                  color: Colors.black.withOpacity(.1),
                ),
                child: IconButton(
                  // Icono de búsqueda de tamaño 28 y color blanco
                  icon: const Icon(Icons.search, size: 28, color: Colors.white),
                  onPressed: () {}, // Acción del botón
                ),
              ),
              // Espacio de 10 píxeles entre los botones
              const SizedBox(width: 10),
              // Segundo contenedor
              Container(
                decoration: BoxDecoration(
                  // Bordes redondeados con radio de 15
                  borderRadius: BorderRadius.circular(15),
                  // Fondo negro con opacidad al 10%
                  color: Colors.black.withOpacity(.1),
                ),
                child: IconButton(
                  // Icono de notificaciones
                  icon: const Icon(
                    Icons.notifications,
                    size: 28,
                    color: Colors.white,
                  ),
                  onPressed: () {}, // Acción del botón
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
