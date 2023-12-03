import 'package:flutter/material.dart';

class Testing1 extends StatefulWidget {
  const Testing1({super.key});

  @override
  State<Testing1> createState() => _Testing1State();
}

class _Testing1State extends State<Testing1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Center(
        child: Text("Love & Peace"),
      ),
    );
  }
}