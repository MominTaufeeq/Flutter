import 'package:banking_app/Myroute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  int _currentindex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 244, 244),
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
      body: Column(children: [
        Center(
          child: Text(
            "Transfer",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 36, right: 8),
              child: Container(
                height: 76,
                width: 76,
                child: Center(
                  child: SvgPicture.asset(
                    "assets/images/paypal.svg",
                    height: 26,
                    width: 22,
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 36,
                right: 8,
              ),
              child: Container(
                height: 76,
                width: 76,
                child: Center(
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/images/mastercard.svg",
                      height: 26,
                      width: 22,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 36,
                right: 8,
              ),
              child: Container(
                height: 76,
                width: 76,
                child: Center(
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/images/netflix.svg",
                      height: 26,
                      width: 22,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 36, right: 8),
              child: Container(
                height: 76,
                width: 76,
                child: Center(
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/images/spotify.svg",
                      height: 26,
                      width: 22,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 28,
          ),
          child: Container(
            height: 80,
            width: 327,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    "assets/images/netflix.svg",
                    height: 32,
                    width: 32,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, right: 15),
                      child: Text(
                        "Netflix",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5),
                      child: Text(
                        "-EGP 150",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 80,
            width: 327,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    "assets/images/spotify.svg",
                    height: 32,
                    width: 32,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, right: 15),
                      child: Text(
                        "Spotify",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5),
                      child: Text(
                        "-EGP 150",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 80,
            width: 327,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    "assets/images/mastercard.svg",
                    height: 32,
                    width: 32,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, right: 15),
                      child: Text(
                        "Mastercard",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5),
                      child: Text(
                        "-EGP 150",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 80,
            width: 327,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    "assets/images/paypal.svg",
                    height: 32,
                    width: 32,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, right: 15),
                      child: Text(
                        "Paypal",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5),
                      child: Text(
                        "-EGP 150",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
        ),
      ]),
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
