import 'package:flutter/material.dart';
import 'package:my_app/Pages/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/utility/routes.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themes
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.lateef().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // debug banner 
      debugShowCheckedModeBanner: false,
      //Routes
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
