import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        primarySwatch: Colors.blueGrey,
      ),
      home: TextoFijo(),
    );
  }
}

//___________________________________________

class TextoFijo extends StatefulWidget {
  TextoFijo({Key? key}) : super(key: key);

  @override
  State<TextoFijo> createState() => _TextoFijoState();
}

class _TextoFijoState extends State<TextoFijo> {
  String textoeditado = "hola";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo parametros entre hojas"),
        centerTitle: true,
      ),
      backgroundColor: Colors.lightGreen[150],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            textoeditado,
          ),
          const SizedBox(height: 20),
          MaterialButton(
            minWidth: 180,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(
                builder: ((context) => SecondPage1(textoeditado)),
              ))
                  .then((result) {
                setState(() {
                  textoeditado = result;
                });
              });
            },
            child: const Text(
              "Editar",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}

//--------------------------------------------------------------------------

class SecondPage1 extends StatefulWidget {
  final String? textoedidado2;

  const SecondPage1(this.textoedidado2, {Key? key}) : super(key: key);

  @override
  State<SecondPage1> createState() => _SecondPage1State();
}

class _SecondPage1State extends State<SecondPage1> {
  TextEditingController? _controller2;

  @override
  void initState() {
    // TODO: implement initState
    _controller2 = TextEditingController(text: widget.textoedidado2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edita la hoja"),
        centerTitle: true,
      ),
      backgroundColor: Colors.lightGreen[100],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _controller2,
                  decoration: InputDecoration(
                    labelText: "Descripción",
                    counterText: "Sea breve",
                    filled: true,
                    fillColor: Colors.grey[100],
                    suffix: GestureDetector(
                      onTap: () {
                        _controller2?.clear();
                      },
                      child: Text("borrar"),
                    ),
                  ),
                  onSubmitted: (_controll) {
                    print("asda");
                  },
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop(_controller2?.text);
                  },
                  child: Text("Guardar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
