// ignore_for_file: prefer_const_constructors, prefer_const_declarations, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media-exp3.licdn.com/dms/image/C4D03AQGrQ7kVq3X9cw/profile-displayphoto-shrink_200_200/0/1603344758169?e=1630540800&v=beta&t=Gagd6JEI5oGWBApiJKch2o7uzzdVruc1qNNdGwLDuCg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                accountName: Text("Abdul Sattar"),
                accountEmail: Text('a.abdulsattarsuleman@gmail.com'),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.6,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.info, color: Colors.white),
              title: Text(
                "About",
                textScaleFactor: 1.6,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Gallery",
                textScaleFactor: 1.6,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.phone, color: Colors.white),
              title: Text(
                "Contact",
                textScaleFactor: 1.6,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
