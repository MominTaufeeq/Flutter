import 'package:banking_app/Myroute.dart';
import 'package:banking_app/calculator.dart';
import 'package:banking_app/favourite.dart';
import 'package:banking_app/home.dart';
import 'package:banking_app/transfer.dart';

import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  int _currentindex = 4;
  final screens = [
    CalculatorPage(),
    FavouritePage(),
    HomePage(),
    TransferPage(),
    ReportPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      drawer: Drawer(
        child: SingleChildScrollView(
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
                  height: 35,
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
      body: Column(
        children: [
          Center(
            child: Text(
              "Reports",
              style: TextStyle(fontSize: 32),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 33,
                  right: 16,
                  left: 24,
                ),
                child: Container(
                  height: 79,
                  width: 156,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 8,
                          right: 76,
                        ),
                        child: Text(
                          "Money in",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 50, left: 7),
                        child: Text(
                          "+EGP 600.00",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 34, 130, 208),
                          Color.fromARGB(255, 178, 234, 178),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 33,
                  right: 16,
                  left: 16,
                ),
                child: Container(
                  height: 80,
                  width: 156,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 8,
                          right: 60,
                        ),
                        child: Text(
                          "Money out",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 50, left: 7),
                        child: Text(
                          "-EGP 550.19",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue,
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 90, 160, 218),
                          Color.fromARGB(255, 178, 235, 178),
                        ]),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
            ),
            child: Container(
              height: 327,
              width: 323,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                children: [
                  Image.asset("assets/images/graph.png"),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: Container(
                    height: 76,
                    width: 327,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 144, 187, 222),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                            left: 16,
                            right: 55,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "In Budget",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 10,
                                ),
                                child: Text(
                                  "Shopping",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5, left: 90, bottom: 14),
                          child: Text(
                            "EGP 50.00/ \n EGP 100.00",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    )),
              )
            ],
          )
        ],
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
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
