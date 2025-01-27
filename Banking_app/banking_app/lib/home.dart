import 'package:banking_app/Myroute.dart';
import 'package:banking_app/calculator.dart';
import 'package:banking_app/favourite.dart';
import 'package:banking_app/report.dart';
import 'package:banking_app/transfer.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 2;
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
        iconTheme: IconThemeData(color: Colors.deepPurple),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
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
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 153,
              right: 130,
            ),
            child: Image.asset(
              "assets/images/login.png",
              height: 80.35,
              width: 91.442,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 44,
              left: 24,
              right: 22,
            ),
            child: Container(
              height: 168,
              width: 329,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(255, 34, 130, 208),
                        Color.fromARGB(255, 178, 234, 178),
                      ])),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      right: 107,
                    ),
                    child: Text(
                      "Account balance",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 45,
                          left: 16,
                        ),
                        child: Text(
                          "I Have",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 45, right: 16, left: 120),
                        child: Text(
                          "EGP 101,777,19",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 16,
                        ),
                        child: Text(
                          "I Owe",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 16, left: 125),
                        child: Text(
                          "EGP 0,00",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 56, left: 24),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 160,
                    child: Center(
                      child: Text(
                        "Account summary",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 23,
                      left: 8,
                    ),
                    child: Container(
                      height: 40,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Own account transfer",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Credit card payment",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 23,
                        left: 8,
                      ),
                      child: Container(
                        height: 40,
                        width: 160,
                        child: Center(
                          child: Text(
                            "Internal transfer",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Open certifactes \nand deposits",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 23,
                        left: 8,
                      ),
                      child: Container(
                        height: 40,
                        width: 160,
                        child: Center(
                          child: Text(
                            "Domestic transfer",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 160,
                      child: Center(
                        child: Text(
                          "Hard token",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 23,
                        left: 8,
                      ),
                      child: Container(
                        height: 40,
                        width: 160,
                        child: Center(
                          child: Text(
                            "Payment services",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
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
          screens[_currentindex];
          _currentindex = index;
        }),
      ),
    );
  }
}
