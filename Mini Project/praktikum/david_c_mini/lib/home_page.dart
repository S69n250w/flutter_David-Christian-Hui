import 'package:david_c_mini/menu_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Fresh"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MenuPage()));
          },
          child: Text("Go to Menu Page")
        ),
      ),
    );
  }
}