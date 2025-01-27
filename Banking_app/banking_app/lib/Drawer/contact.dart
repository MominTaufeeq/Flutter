import 'dart:ui';

import 'package:banking_app/Myroute.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 243, 243),
      drawer: Drawer(
        child: Column(
          children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 168,
                  left: 16,
                ),
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.AccountRoute);
                    },
                    icon: Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: Text(
                        "Account",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    )),
              )
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                  left: 16,
                ),
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.AccountRoute);
                    },
                    icon: Icon(
                      Icons.text_snippet,
                      color: Colors.blue,
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: Text(
                        "Cerificates/Deposits",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    )),
              )
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                  left: 16,
                ),
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.CardRoute);
                    },
                    icon: Icon(
                      Icons.attach_money,
                      color: Colors.amber,
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: Text(
                        "Cards services",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    )),
              )
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                  left: 16,
                ),
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.ContactRoute);
                    },
                    icon: Icon(
                      Icons.mail,
                      color: Colors.purple,
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: Text(
                        "Contact us",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    )),
              )
            ]),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.blue),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 5),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // SvgPicture.asset("")
                Image.asset(
                  "assets/images/Avatars Default with Backdrop.png",
                  height: 25,
                ),
                Center(
                  child: Text(
                    "Hii,Sarah",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Text(
              "Contact us",
              style: TextStyle(fontSize: 32),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 44,
              left: 40,
              right: 40,
            ),
            child: SizedBox(
              height: 58,
              width: 295,
              child: TextField(
                decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 32,
              left: 39,
              right: 41,
            ),
            child: SizedBox(
              // <--- SizedBox
              height: 110,
              width: 295,
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                    labelText: "Message",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 176,
            ),
            child: Container(
              height: 40,
              width: 140,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 8),
                  child: Icon(
                    Icons.support_agent,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "00000",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )
              ]),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: ,
        // selectedFontSize: 15,
        // unselectedFontSize: ,
        // showSelectedLabels: ,
        // showUnselectedLabels: ,
        currentIndex: _currentindex,
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Icon(Icons.calculate),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.calculatorRoute);
                }),
            backgroundColor: Colors.white,
            label: "Calculator",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.star),
              onPressed: () {
                Navigator.pushNamed(context, MyRoute.FavouriteRoute);
              },
            ),
            backgroundColor: Colors.white,
            label: "Favorite",
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.HomeRoute);
                },
              ),
              backgroundColor: Colors.blue,
              label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.compare_arrows),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.TransferRoute);
                },
              ),
              backgroundColor: Colors.white,
              label: "transfer"),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.trending_up),
              onPressed: () {
                Navigator.pushNamed(context, MyRoute.ReportRoute);
              },
            ),
            backgroundColor: Colors.white,
            label: "Report",
          ),
        ],

        onTap: (index) => setState(() {
          _currentindex = index;
        }),
      ),
    );
  }
}
