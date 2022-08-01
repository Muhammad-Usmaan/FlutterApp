import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
 
    final int nu = 29;
    final String name = "mani";

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Center(
        child: Container(
          child: Text("Home Page of $name $nu"),
        ),
      ));
  }
}