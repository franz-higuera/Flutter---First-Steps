import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      theme: ThemeData(
        primaryColor: Colors.orange,
        primarySwatch: Colors.orange,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[150],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("First Page"),
      ),
      body: Center(
        child: MaterialButton(
          minWidth: 150,
          color: Colors.orange,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => SecondPage()),
              ),
            );
          },
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[150],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Second Page"),
      ),
      body: Center(
        child: MaterialButton(
          minWidth: 150,
          color: Colors.orange,
          onPressed: () {
            Navigator.of(context).pop(FirstPage());
          },
          child: Text("Go back"),
        ),
      ),
    );
  }
}
