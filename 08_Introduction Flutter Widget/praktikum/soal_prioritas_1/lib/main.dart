import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home Page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Center(
          child: Text(
            "Love & Peace",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.pinkAccent
            ),
          ),
        ),
      ),
    );
  }
}