import "package:flutter/material.dart";

void main() {
  runApp(Counter());
}

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter",
      theme: ThemeData(
        backgroundColor: Colors.green,
        primaryColor: Colors.green,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  int veces = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(80),
              child: Text(
                "$veces",
                style: const TextStyle(
                  fontSize: 150,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80.0, top: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("-1");
                      setState(() {
                        if (veces <= 20 && veces > 0) {
                          veces--;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Colors.red,
                        shape: StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10)),
                    child: const Text(
                      "-1",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("+1");
                      setState(() {
                        if (veces < 20 && veces >= 0) {
                          veces++;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Colors.green,
                        shape: StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10)),
                    child: const Icon(Icons.plus_one, size: 50),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
