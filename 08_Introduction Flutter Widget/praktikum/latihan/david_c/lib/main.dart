import 'package:flutter/material.dart';

void main() {
  runApp(const MyName());
}

class MyName extends StatelessWidget {
  const MyName({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppBar(
        title: const Text("Hai nama ku David C"),
      ),
    );
  }
}