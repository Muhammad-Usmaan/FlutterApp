import 'package:flutter/material.dart';
import 'package:my_app/utility/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  final String name = "HAJI";
  final double no = 3;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Flutter/Dart",
        style: TextStyle(fontSize: 27),
      )),
      //Drawer
      drawer: Drawer(),
      // Main homePage Body
      body: Center(
        child: Container(
          child: Text(
            "Welcome to $name MEHBOOB'S App $no",
            style: TextStyle(fontSize: 20, color: Colors.indigo),
          ),
        ),
      ),
      //floating action button
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, MyRoutes.LoginRoute);
      }),
    );
  }
}
