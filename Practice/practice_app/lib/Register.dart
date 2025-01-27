import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_app/Myroutes.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 208, 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 173.83,
              width: 320.34,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/image.svg",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 48),
              child: TextFormField(
                keyboardType: TextInputType.number,
                scrollPadding: EdgeInsets.all(10),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white)),
                  prefix: Text(
                    "+91",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    selectionColor: Colors.black,
                  ),
                  hintText: "Phone Number",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 16,
                bottom: 173.83,
              ),
              child: SizedBox(
                width: 342,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.VeriPageRoute);
                  },
                  child: Text(
                    "Send OTP",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
