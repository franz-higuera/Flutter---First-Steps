import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(
      title: "mostrario  botones",
      home: MostrarioBotones(),
    ),
  );
}

class MostrarioBotones extends StatelessWidget {
  const MostrarioBotones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Mostrario de botones"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: GridView.count(
          childAspectRatio: 1.4,
          crossAxisCount: 2,
          children: [
            EjemploBoton(
              descripcion: "IconButton",
              boton: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_home_work),
              ),
            ),
            const EjemploBoton(
              descripcion: "BackButton",
              boton: BackButton(
                color: Colors.black,
              ),
            ),
            const EjemploBoton(
              descripcion: "BackButtonIcon",
              boton: BackButtonIcon(),
            ),
            EjemploBoton(
              descripcion: "ButtonBar",
              boton: ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CloseButton(
                    color: Colors.orange,
                    onPressed: () {
                      print("oprimido");
                    },
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_home_work),
                  ),
                ],
              ),
            ),
            EjemploBoton(
              descripcion: "CloseButton",
              boton: CloseButton(
                color: Colors.orange,
                onPressed: () {
                  print("oprimido");
                },
              ),
            ),
            EjemploBoton(
              descripcion: "FloatingActionButton",
              boton: FloatingActionButton(
                backgroundColor: Colors.green,
                child: Text("aqui"),
                tooltip: "hello",
                onPressed: () {
                  print("oprimio");
                },
              ),
            ),
            EjemploBoton(
              descripcion: "FloatingActionButton",
              boton: FloatingActionButton.large(
                backgroundColor: Colors.green,
                child: Text("large"),
                tooltip: "hello",
                onPressed: () {
                  print("oprimio");
                },
              ),
            ),
            EjemploBoton(
              descripcion: "FloatingActionButton",
              boton: FloatingActionButton.small(
                backgroundColor: Colors.green,
                child: Text("small", style: TextStyle(fontSize: 12)),
                tooltip: "hello",
                onPressed: () {
                  print("oprimio");
                },
              ),
            ),
            EjemploBoton(
              descripcion: "MaterialButton",
              boton: MaterialButton(
                onPressed: () {
                  print("oprimido");
                },
                child: Text("Aqui botón"),
                animationDuration: Duration(seconds: 1),
                colorBrightness: Brightness.light,
                //focusColor: Colors.blue,
                color: Colors.white,
                //hoverColor: Colors.yellow,
                //disabledColor: Colors.brown,
                highlightColor: Color.fromARGB(255, 202, 214, 219),
                highlightElevation: 8,
                splashColor: Colors.green,
                elevation: 1,
              ),
            ),
            EjemploBoton(
              descripcion: "MaterialButton",
              boton: MaterialButton(
                onPressed: () {
                  print("oprimido");
                },
                child: Text("Aqui botón"),
                animationDuration: Duration(seconds: 1),
                colorBrightness: Brightness.dark,
                //focusColor: Colors.blue,
                color: Colors.blue,
                //hoverColor: Colors.yellow,
                //disabledColor: Colors.brown,
                highlightColor: Color.fromARGB(255, 29, 94, 122),
                highlightElevation: 8,
                splashColor: Colors.green,
                elevation: 5,
                visualDensity: VisualDensity(vertical: 1, horizontal: 2),
              ),
            ),
            EjemploBoton(
              descripcion: "ToggleButtons",
              boton: ToggleButtons(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_home_work),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_home_work),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_home_work),
                  ),
                ],
                isSelected: [
                  true,
                  true,
                  true,
                ],
                color: Colors.orange,
                borderColor: Colors.orange,
                borderWidth: 1,
                fillColor: Colors.green,
                splashColor: Colors.blue,
                selectedColor: Colors.green,
                selectedBorderColor: Colors.amberAccent,
                hoverColor: Colors.brown,
                disabledBorderColor: Colors.grey,
              ),
            ),
            EjemploBoton(
              descripcion: "TextButton",
              boton: TextButton(
                onPressed: () {
                  print("oprimido");
                },
                child: Text("Oprime aquí"),
                style: ButtonStyle(
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            EjemploBoton(
              descripcion: "ElevatedButton",
              boton: ElevatedButton(
                onPressed: () {
                  print("oprimido");
                },
                child: Text("oprime aqui"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            EjemploBoton(
              descripcion: "ElevatedButton",
              boton: ElevatedButton(
                onPressed: () {
                  print("oprimido");
                },
                child: Text("oprime aqui"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.amberAccent,
                    onPrimary: Colors.blueAccent,
                    onSurface: Colors.orange,
                    shadowColor: Colors.blue,
                    elevation: 8,
                    surfaceTintColor: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EjemploBoton extends StatelessWidget {
  final String descripcion;
  final Widget boton;

  const EjemploBoton({
    required this.descripcion,
    required this.boton,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            boton,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                descripcion,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
