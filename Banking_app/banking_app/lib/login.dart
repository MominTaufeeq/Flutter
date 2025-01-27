import 'package:banking_app/Myroute.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 48, left: 153.04, right: 130.52),
          child: Image.asset(
            "assets/images/login.png",
            height: 80,
            width: 91,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 127.05,
            left: 40,
            right: 40,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 58,
                width: 310,
                child: OutlinedButton.icon(
                    label: Text(
                      'Retail Login',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.RetailRoute);
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.centerLeft,
                      primary: Colors.white,
                      side: BorderSide(color: Colors.blue, width: 1),
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 40,
            right: 40,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 58,
                width: 310,
                child: OutlinedButton.icon(
                    label: Text(
                      'Corporate login',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    icon: Icon(
                      Icons.group,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.centerLeft,
                      primary: Colors.white,
                      side: BorderSide(color: Colors.blue, width: 1),
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 40,
            right: 40,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 58,
                width: 310,
                child: OutlinedButton.icon(
                    label: Text(
                      'Contact us',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    icon: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.centerLeft,
                      primary: Colors.white,
                      side: BorderSide(color: Colors.blue, width: 1),
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 40,
            right: 40,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 58,
                width: 310,
                child: OutlinedButton.icon(
                    label: Text(
                      'FAQ’s',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    icon: Icon(
                      Icons.help,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.centerLeft,
                      primary: Colors.white,
                      side: BorderSide(color: Colors.blue, width: 1),
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 127,
            left: 33.5,
            right: 33.5,
          ),
          child: Text(
            "Copyright NBE 2021 All rights reserved - national Bank of Egypt",
            style: TextStyle(fontSize: 10),
          ),
        )
      ]),
    );
  }
}
