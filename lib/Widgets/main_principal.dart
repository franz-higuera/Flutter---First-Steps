import 'package:ejemplos3/Widgets/first_page.dart';
import 'package:ejemplos3/Widgets/second_page.dart';
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
      routes: {
        "/one": ((context) => const FirstPage1()),
        "/two": ((context) => const SecondPage1()),
      },
      initialRoute: "/one",
    );
  }
}
