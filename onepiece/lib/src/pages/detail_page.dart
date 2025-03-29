import 'package:flutter/material.dart';
import 'package:onepiece/src/widgets/blur_container.dart';
import 'package:onepiece/src/widgets/infotitle_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.color,
    required this.image,
    required this.nombre,
  });

  final int color;
  final String image;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      //Contenedor de la pagina
      body: Container(
        //decoracion: fondo gradiente (color indicado, color negro), forma de aplicar el gradiente
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(color), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        //Forma que se organiza los elementos
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 12),
                  child: SizedBox(height: 400, child: Image.asset(image)),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: BlurContainer(
                    child: Container(
                      width: 160,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        nombre,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "$nombre #personaje",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("One piece", style: TextStyle(color: Colors.white70)),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Infotitle(title: "Eiichirõ Oda", subtitle: "Creador"),
                  Infotitle(title: "Japón", subtitle: "País"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
