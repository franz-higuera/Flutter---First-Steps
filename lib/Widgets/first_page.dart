import 'package:flutter/material.dart';

class FirstPage1 extends StatelessWidget {
  const FirstPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[150],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("First Page Number 1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: MaterialButton(
            minWidth: 160,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed("/two");
            },
            child: const Text(
              "Go to Second Page",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
