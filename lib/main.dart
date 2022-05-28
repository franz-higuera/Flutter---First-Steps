import 'package:ejemplos3/DavDev/page1.dart';
import "package:flutter/material.dart";

void main() {
  runApp(const AppColors());
}

class AppColors extends StatelessWidget {
  const AppColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "la app de los colores",
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.orange,
      ),
      home: FirstPage2(),
    );
  }
}

// -------------------------------------------------------

class FirstPage2 extends StatefulWidget {
  const FirstPage2({Key? key}) : super(key: key);

  @override
  State<FirstPage2> createState() => _FirstPage2State();
}

class _FirstPage2State extends State<FirstPage2> {
  Color _color2 = Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color2,
      appBar: AppBar(
        title: const Text("First Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: MaterialButton(
                color: Colors.orange[500],
                minWidth: 180,
                onPressed: () {
                  Navigator.of(context)
                      .push(
                    MaterialPageRoute(
                      builder: ((context) => SecondPage2(color1: _color2)),
                    ),
                  )
                      .then((value) {
                    if (value != null)
                      setState(() {
                        _color2 = value;
                      });
                  });
                },
                child: const Text("cambiar fondo"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------//
class SecondPage2 extends StatefulWidget {
  final Color? color1;

  const SecondPage2({this.color1, Key? key}) : super(key: key);

  @override
  State<SecondPage2> createState() => _SecondPage2State();
}

class _SecondPage2State extends State<SecondPage2> {
  List<TextEditingController>? _controllers;

  @override
  void initState() {
    Color? color2 = widget.color1;
    List<String> argb = [
      color2!.red.toString(),
      color2.green.toString(),
      color2.blue.toString(),
    ];
    _controllers = [
      for (int i = 0; i < 3; i++) TextEditingController(text: argb[i]),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const List<String> colores1 = ["Rojo", "Verde", "Azu"];

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 20),
                      child: TextField(
                        controller: _controllers![i],
                        decoration: InputDecoration(
                          labelText: colores1[i],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            MaterialButton(
              color: Colors.orange[500],
              minWidth: 180,
              onPressed: () {
                Navigator.of(context).pop(Color.fromARGB(
                  255,
                  int.parse(_controllers![0].text),
                  int.parse(_controllers![1].text),
                  int.parse(_controllers![2].text),
                ));
              },
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}
