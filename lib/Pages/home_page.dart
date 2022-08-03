import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  final String name = "HAJI";
  final double no = 3;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Flutter/Dart")),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Welcome to $name MEHBOOB'S App $no"),
        ),
      ),
    );
  }
}
