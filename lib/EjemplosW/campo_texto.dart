import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "la app de los textos",
      theme: ThemeData(
        primaryColor: Colors.pink,
        primarySwatch: Colors.pink,
      ),
      home: HojaApp(),
    );
  }
}

class HojaApp extends StatefulWidget {
  const HojaApp({Key? key}) : super(key: key);

  @override
  State<HojaApp> createState() => _HojaAppState();
}

class _HojaAppState extends State<HojaApp> {
  TextEditingController? _controller1;

  @override
  void initState() {
    // TODO: implement initState
    _controller1 = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(title: const Text("La app de los textos")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            TextField(
              controller: _controller1,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue[100],
                  labelText: "Name:",
                  icon: Icon(Icons.man),
                  suffix: GestureDetector(
                    onTap: () {
                      _controller1?.clear();
                    },
                    child: Icon(Icons.close,
                        color: Theme.of(context).primaryColor),
                  )),
              onSubmitted: (String nombre) {
                if (nombre.isNotEmpty) {
                  ventana(context, nombre);
                }
                ;
              },
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: MaterialButton(
                shape: StadiumBorder(
                    side: BorderSide(color: Theme.of(context).primaryColor)),
                elevation: 5,
                onPressed: () {
                  if (_controller1!.text.isNotEmpty) {
                    ventana(context, _controller1!.text);
                  }
                },
                child: Text(
                  "enviar",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> ventana(BuildContext context, String nombre) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Hola a todos",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.pink),
        ),
        content: Text(
          "Tu nombre es: $nombre",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.pink[100],
        elevation: 10,
        shape: const StadiumBorder(),
        insetPadding: EdgeInsets.all(20),
      ),
    );
  }
}
