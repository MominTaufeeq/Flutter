import 'package:banking_app/Myroute.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
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
      body: Column(children: [
        Center(
          child: Text(
            "Accounts",
            style: TextStyle(fontSize: 32),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
              width: 280,
              height: 40,
              child: Center(
                  child: Text(
                "Current and savings",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              )),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)))),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 24,
          ),
          child: Container(
              width: 280,
              height: 40,
              child: Center(
                  child: Text(
                "Loans",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              )),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)))),
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

        onTap: (index) => setState(() {
          _currentindex = index;
        }),
      ),
    );
  }
}
