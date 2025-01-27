import 'package:banking_app/Drawer/account.dart';
import 'package:banking_app/Drawer/card.dart';
import 'package:banking_app/Drawer/contact.dart';
import 'package:banking_app/Myroute.dart';
import 'package:banking_app/Retail_login.dart';
import 'package:banking_app/Slide.dart/slide.dart';
import 'package:banking_app/calculator.dart';
import 'package:banking_app/favourite.dart';
import 'package:banking_app/home.dart';
import 'package:banking_app/login.dart';
import 'package:banking_app/login_code.dart';
import 'package:banking_app/report.dart';
import 'package:banking_app/transfer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        MyRoute.SlideRoute: (context) => SlidePage(),
        MyRoute.LoginRoute: (context) => LoginPage(),
        MyRoute.RetailRoute: (context) => RetailPage(),
        MyRoute.CodeRoute: (context) => LoginCode(),
        MyRoute.HomeRoute: (context) => HomePage(),
        MyRoute.ReportRoute: (context) => ReportPage(),
        MyRoute.FavouriteRoute: (context) => FavouritePage(),
        MyRoute.calculatorRoute: (context) => CalculatorPage(),
        MyRoute.TransferRoute: (context) => TransferPage(),
        MyRoute.AccountRoute: (context) => AccountPage(),
        MyRoute.ContactRoute: (context) => ContactPage(),
        MyRoute.CardRoute: (context) => CardPage(),
      },
    );
  }
}
