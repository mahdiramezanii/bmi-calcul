import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
        child: SizedBox(
          height: 100,
          width: 100,
        ),
      ))),
    );
  }
}
