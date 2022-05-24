import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      theme: ThemeData.light(),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 223, 228),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "EL contador de Flutter",
          style: TextStyle(fontSize: 22, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("has apretado:"),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.displayLarge,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("has apretado el botón");
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
