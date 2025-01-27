import 'package:flutter/material.dart';
import 'package:practice_app/Myroutes.dart';
import 'package:practice_app/Register.dart';
import 'package:practice_app/home.dart';
import 'package:practice_app/veri_user.dart';
import 'package:practice_app/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        MyRoutes.FirstPageRoute: (context) => FirstPage(),
        MyRoutes.VeriPageRoute: (context) => VeriPage(),
        MyRoutes.VeriUserRoute: (context) => VeriUser(),
        MyRoutes.HomeRoute: (context) => HomePage(),
      },
    );
  }
}
