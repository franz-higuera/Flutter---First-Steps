import 'package:flutter/material.dart';

class ScreenM extends StatelessWidget {
  ScreenM({Key? key}) : super(key: key);

  String contenido = "hola mi nombre es Frailejon ernesto perez ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //width: 200,
          //height: 300,
          alignment:
              AlignmentGeometry.lerp(Alignment.center, Alignment.centerLeft, 1),
          //color: const Color.fromARGB(255, 150, 120, 250),

          // decoration ---> toda la decoración del container
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-6, -6),
                  blurRadius: 3,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.normal),
            ],
          ),

          // Limita el valor máximo y minimo del container
          // constraints: BoxConstraints(maxHeight: 600, maxWidth: 350),

          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 20),
          margin: const EdgeInsets.all(50),

          // El texto en un container se crea en un 'child'
          // Dentro del texto se modifica todo el estilo del texto
          child: SizedBox(
            width: 350,
            height: 200,
            child: Text(
              contenido * 4,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 28,
                fontStyle: FontStyle.normal,
                backgroundColor: Colors.greenAccent,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.black,
                decorationThickness: 1,
                color: Colors.orange,
                fontWeight: FontWeight.w300,
                /* tambien se puede Fontweight.bold */
                height: 1.2,
                leadingDistribution: TextLeadingDistribution.even,
                letterSpacing: 1.0,
                wordSpacing: 3,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(1, 1),
                    blurRadius: 2,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
