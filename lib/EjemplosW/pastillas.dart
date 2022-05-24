import "package:flutter/material.dart";

class Pastillas extends StatelessWidget {
  const Pastillas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // VARIABLES LOCALES
    double ancho = MediaQuery.of(context).size.width;
    double alto = MediaQuery.of(context).size.height;
    // double top = MediaQuery.of(context).padding.top;
    // double bottom = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Container(
          color: Colors.grey,
          width: ancho,
          height: alto,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Pastilla(
                  texto: "texto 1",
                  color1: Colors.green,
                  icono1: Icon(Icons.abc, size: 25, color: Colors.white),
                ),
                Pastilla(
                  texto: "texto 2",
                  color1: Colors.blue,
                  icono1: Icon(Icons.add_alert_rounded,
                      size: 25, color: Colors.white),
                ),
                Pastilla(
                  texto: "texto 3",
                  color1: Colors.orange,
                  icono1: Icon(Icons.microwave_rounded,
                      size: 25, color: Colors.white),
                ),
                Pastilla(
                  texto: "texto 4",
                  color1: Colors.pink,
                  icono1: Icon(Icons.add_alarm_outlined,
                      size: 25, color: Colors.white),
                ),
                Pastilla(
                  texto: "texto 5",
                  color1: Colors.purple,
                  icono1: Icon(Icons.three_k_plus_sharp,
                      size: 25, color: Colors.white),
                ),
                Pastilla(
                  texto: "texto 6",
                  color1: Colors.black,
                  icono1: Icon(Icons.shopify_outlined,
                      size: 25, color: Colors.white),
                ),
                Pastilla(
                  texto: "texto 7",
                  color1: Colors.lime,
                  icono1:
                      Icon(Icons.circle_rounded, size: 25, color: Colors.white),
                ),
                Pastilla(
                  texto: "texto 8",
                  color1: Colors.indigo,
                  icono1: Icon(Icons.surround_sound_sharp,
                      size: 25, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Pastilla extends StatelessWidget {
  final Color color1;
  final String texto;
  final Icon icono1;

  const Pastilla({
    required this.texto,
    Key? key,
    this.color1 = Colors.red,
    this.icono1 = const Icon(
      Icons.abc_outlined,
      size: 15,
      color: Colors.white,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(10, 10),
              spreadRadius: 1,
              blurRadius: 2,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              texto,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: icono1,
            ),
          ],
        ),
      ),
    );
  }
}
