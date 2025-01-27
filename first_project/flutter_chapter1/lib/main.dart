import 'package:flutter/material.dart';
import 'package:flutter_chapter1/module/Mytheme.dart';

import 'package:flutter_chapter1/pages/HomePage.dart';
import 'package:flutter_chapter1/pages/login_Pages.dart';
import 'package:flutter_chapter1/pages/trial/search.dart';
import 'package:flutter_chapter1/utils/MyRoutes.dart';

import 'Setting/setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //var name = "momin"; //It will take any type of data type

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/home",
      routes: {
        "/": (context) => loginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginPage(),
        MyRoutes.settingRoute: (context) => settingPage(),
        // MyRoutes.search: (context) => search(),

      },
    );
  }
}
