import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Alterra"),
        ),
        body: Center(
          child: Text("Nama saya adalah David Christian Hui"),
        ),
      ),
    );
  }
}