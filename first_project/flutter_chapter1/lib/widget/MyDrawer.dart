import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chapter1/utils/MyRoutes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var settingRoute = MyRoutes.settingRoute;
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Momin Taufeeq",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                accountEmail: Text(
                  "taufeeqmomin2004@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.search);
              },
              leading: Icon(CupertinoIcons.map, color: Colors.white),
              title: Text(
                "Search",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.map, color: Colors.white),
              title: Text(
                "Map",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.list_bullet, color: Colors.white),
              title: Text(
                "Menu",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, MyRoutes.settingRoute),
              leading: Icon(CupertinoIcons.settings, color: Colors.white),
              title: Text(
                "Setting",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, MyRoutes.loginRoute),
              leading: Icon(CupertinoIcons.person, color: Colors.white),
              title: Text(
                "Register/Login",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
