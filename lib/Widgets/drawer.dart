import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Pages/home_page.dart';
import 'package:my_app/utility/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final ImageUrl =
      "https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F220916093104-cristiano-ronaldo.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      // color: Colors.blueAccent,
      child: ListView(children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              margin: EdgeInsets.zero,
              accountName: Text("Usman"),
              accountEmail: Text("Usmanher369@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(ImageUrl),
              ),
            )),
        ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.black,
              ),
            )),
        ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.black,
              ),
            )),
        ListTile(
            leading: Icon(
              CupertinoIcons.phone,
              color: Colors.black,
            ),
            title: Text(
              "Contact us",
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.black,
              ),
            )),
      ]),
    ));
  }
}
