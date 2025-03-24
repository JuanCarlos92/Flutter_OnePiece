import 'package:flutter/material.dart';
import 'package:onepiece/src/widgets/blur_container.dart';

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
                  child: SizedBox(height: 500, child: Image.asset(image)),
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
          ],
        ),
      ),
    );
  }
}
