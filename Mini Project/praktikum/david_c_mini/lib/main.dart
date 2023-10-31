import 'package:david_c_mini/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    // Route default aplikasi (biasanya halaman beranda)
    home: LoginPage(),
    // Definisikan rute tambahan
    routes: {
      '/login': (context) => LoginPage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}