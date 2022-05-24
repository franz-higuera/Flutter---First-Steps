import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Body(),
            ConEstado(),
          ],
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  //const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SinEstado(),
        ],
      ),
    );
  }
}

class SinEstado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(100),
      child: const Center(
        child: Text("sin estado"),
      ),
    );
  }
}

//_____________________________________
class ConEstado extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Estado();
}

class Estado extends State<ConEstado> {
  bool _activo = false;

  @override
  void initState() {
    super.initState();
    _activo = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _activo = !_activo;
          print("estado: $_activo");
        });
      },
      child: Container(
        height: 200,
        color: (_activo ? Colors.blue : Colors.grey),
        child: const Center(
          child: Text(
            "con Estado",
          ),
        ),
      ),
    );
  }
}
