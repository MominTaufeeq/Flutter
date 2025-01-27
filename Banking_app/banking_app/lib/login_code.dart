import 'package:banking_app/Myroute.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginCode extends StatefulWidget {
  const LoginCode({super.key});

  @override
  State<LoginCode> createState() => _LoginCodeState();
}

class _LoginCodeState extends State<LoginCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 63,
                right: 335,
                left: 16,
              ),
              child: IconButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoute.RetailRoute);
                  },
                  icon: Icon(Icons.arrow_back_ios)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 36,
                left: 123,
                right: 123,
              ),
              child: Text(
                " 00 : 30 ",
                style: TextStyle(fontSize: 40, color: Colors.blue),
              ),
            ),
            Text(
              "Type the verfication code that \n we’ve sent to you",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 78,
                left: 40,
                right: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 70,
                    width: 66,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      enabled: true,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        fillColor: Color.fromARGB(255, 248, 246, 246),
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 66,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      enabled: true,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        fillColor: Color.fromARGB(255, 248, 246, 246),
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 66,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      enabled: true,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        fillColor: Color.fromARGB(255, 248, 246, 246),
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 66,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      enabled: true,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        fillColor: Color.fromARGB(255, 248, 246, 246),
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 391,
                left: 323,
                right: 30,
              ),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, MyRoute.HomeRoute),
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
