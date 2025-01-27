import 'package:banking_app/Myroute.dart';
import 'package:flutter/material.dart';

class RetailPage extends StatelessWidget {
  const RetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              IconButton(
                  padding: EdgeInsets.only(
                    top: 71,
                    left: 14,
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoute.LoginRoute);
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              Padding(
                padding: const EdgeInsets.only(
                  top: 58,
                  left: 113,
                  right: 132,
                ),
                child: Image.asset(
                  "assets/images/login.png",
                  height: 80,
                  width: 91,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 95.05,
            ),
            child: Text(
              "Retail login",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 38,
                right: 42,
                top: 24,
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "User name is here",
                    labelText: "User name",
                    // Set border for enabled state (default)
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    )),
              )),
          Padding(
              padding: const EdgeInsets.only(
                left: 38,
                right: 42,
                top: 24,
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    // Set border for enabled state (default)
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    )),
              )),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: SizedBox(
              height: 58,
              width: 310,
              child: OutlinedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoute.CodeRoute);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    primary: Colors.white,
                  )),
            ),
          ),
        
        ]),
      ),
    );
  }
}
