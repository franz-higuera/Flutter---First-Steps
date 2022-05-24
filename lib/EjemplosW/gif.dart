import 'package:flutter/material.dart';

class Gif extends StatelessWidget {
  const Gif({Key? key}) : super(key: key);

  // VARIABLES GLOBALES

  @override
  Widget build(BuildContext context) {
    // VARIABLES LOCALES
    double ancho = MediaQuery.of(context).size.width;
    double alto = MediaQuery.of(context).size.height;
    double top = MediaQuery.of(context).padding.top;
    double bottom = MediaQuery.of(context).padding.bottom;

    //print("Ancho: $ancho");
    //print("Alto total: $alto");
    //print("Arriba: $top - Abajo: $bottom");

    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Container(
          height: alto,
          width: ancho,
          color: Colors.yellow,
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  textDirection: TextDirection.rtl,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  textDirection: TextDirection.rtl,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  textDirection: TextDirection.rtl,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                    contenedorPrueba(60, 60, 0xFFBFEB91),
                    contenedorPrueba(60, 60, 0xFF42A5F5),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
      ),
    );
  }

  Container contenedorPrueba(double ancho1, double alto1, int color) {
    return Container(
      color: Color(color),
      width: ancho1 * 1.71,
      height: alto1 * 1.743,
      child: Image.network(
        "https://i.pinimg.com/originals/3a/d8/25/3ad825fa000c3a6c7037e981472d4b1a.gif",
        fit: BoxFit.cover,
      ),
    );
  }
}
