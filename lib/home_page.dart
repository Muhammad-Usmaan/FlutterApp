import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int nu = 23;
  final String name = "mani";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Flutter")),
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(
            child: Text("Home Page of $name $nu"),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: ((null))
        )
        );
  }
}
