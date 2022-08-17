import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/Images/login_image.png",
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Welcome!",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Colors.blueAccent),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                ElevatedButton(
                    onPressed: () {
                      print("yess");
                    },
                    child: Text("Sign In"),
                    style: TextButton.styleFrom())
              ],
            ),
          )
        ],
      ),
    );
  }
}
