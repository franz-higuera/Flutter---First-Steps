import 'package:flutter/material.dart';

class SecondPage1 extends StatelessWidget {
  const SecondPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[150],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Second Page Number 2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: MaterialButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).pop();
            },
            minWidth: 160,
            child: const Text(
              "Go back",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
