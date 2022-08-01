import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int nu = 29;
    String name = "mani";
    return MaterialApp(
      home: Material(
          child: Center(
        child: Container(
          child: Text("Home Page of $name $nu"),
        ),
      )),
    );
  }
}
