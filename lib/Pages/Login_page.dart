import 'package:flutter/material.dart';
import 'package:my_app/utility/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  bool changeButton = false;
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
          Text(
            "Welcome $name ",
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
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
            ]),
          ),
          SizedBox(height: 20),
          InkWell(
            hoverColor: Colors.black,
            onTap: () async {
              setState(() {
                changeButton = true;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: changeButton ? 50 : 100,
              height: 50,
              alignment: Alignment.center,
              child: changeButton
                  ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(changeButton ? 35 : 08)),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
          //   },
          //   child: const Text("Login"),
          //   style: ElevatedButton.styleFrom(
          //     minimumSize: Size(80, 40),
          //   ),
          // )
        ]),
      ),
    );
  }
}
