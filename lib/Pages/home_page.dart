import 'package:flutter/material.dart';
import 'package:my_app/utility/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
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
            "Welcome to my_app $no",
            style: TextStyle(
                fontSize: 25,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      //floating action button
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, MyRoutes.loginRoute);
      }),
    );
  }
}
