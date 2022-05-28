// ignore_for_file: avoid_print

import 'package:ejemplos3/DavDev/clases.dart';
import 'package:flutter/material.dart';

// ! MATERIAL

class EjemploDav extends StatelessWidget {
  const EjemploDav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "la app de los colores",
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.orange,
      ),
      home: const Page1(),
    );
  }
}

// ! PRIMERA HOJA

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String texto1 = "prueba";
  Color colorin = Color.fromARGB(250, 250, 0, 0);

  @override
  void initState() {
    print("Hola 1");
    super.initState();
  }

  @override
  Widget build(BuildContext context1) {
    print("Hola 2");
    // UnaClase().conca("David", "Mongo");
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context1)
                      .push(
                    MaterialPageRoute(
                      builder: ((context) => Page2(
                            frase: texto1,
                            edadH: [],
                            color: colorin,
                          )),
                    ),
                  )
                      .then((value) {
                    print(value);
                  });
                },
                child: const Text("Siguiente"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ! SEFGUNDA HOJA

class Page2 extends StatefulWidget {
  const Page2(
      {Key? key, required this.frase, required this.edadH, required this.color})
      : super(key: key);

  final String frase;
  final List<int> edadH;
  final Color color;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
    print("Adios 1");
    super.initState();
  }

  //Color color2 = Widget.color;

  @override
  Widget build(BuildContext context2) {
    print("Adios 2");
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context2).pop("HolaWeon");
                },
                child: Text(widget.frase),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
