import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppBar(
        title: const Text("Hello World"),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black
        ),
      ),
    );
  }
}