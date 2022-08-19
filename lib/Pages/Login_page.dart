import 'package:flutter/material.dart';
import 'package:my_app/utility/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/Images/login_image.png",
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Welcome!",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Colors.blueAccent),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter username", labelText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
            ]),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: const Text("Login"),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(80, 40),
            ),
          )
        ]),
      ),
    );
  }
}
