import 'package:flutter/cupertino.dart';
import 'package:soal_prioritas_1/cupertino_page.dart';

class MyApp extends StatelessWidget {
  final _themeDart = CupertinoThemeData.raw(
    Brightness.dark,
    null,
    null,
    null,
    null,
    null,
    null
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: _themeDart,
      home: HomePage(),
    );
  }
}