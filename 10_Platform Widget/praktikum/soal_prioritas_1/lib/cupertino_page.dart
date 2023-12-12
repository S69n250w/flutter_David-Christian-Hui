import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text("CupertinoApp"),
        ),
        child: Center(
          child: Text("This is CupertinoApp"),
        ),
    );
  }
}
