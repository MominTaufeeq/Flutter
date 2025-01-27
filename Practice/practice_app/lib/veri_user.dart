import 'package:flutter/material.dart';
import 'package:practice_app/Myroutes.dart';

class VeriUser extends StatefulWidget {
  @override
  State<VeriUser> createState() => _VeriUserState();
}

class _VeriUserState extends State<VeriUser> {
  List DropDownlistData = [
    {"title": "Mumbai", "value": "1"},
    {"title": "Thane", "value": "2"},
    {"title": "Pune", "value": "3"},
    {"title": "Bhiwandi", "value": "4"},
    {"title": "Latur", "value": "5"},
  ];
  String dropDown = "";
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 145,
                right: 329,
              ),
              child: Text(
                "Name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 10,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  hintText: "Name",
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 25,
                right: 329,
              ),
              child: Text(
                "Emali",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 10,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail_outlined,
                    color: Colors.black,
                  ),
                  hintText: "abcd@gamil.com",
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 46,
                    left: 24,
                    right: 24,
                  ),
                  child: InputDecorator(
                    decoration: InputDecoration(
                        labelText: "Select City",
                        prefixIcon: Icon(Icons.pin_drop_outlined),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: dropDown,
                          isDense: true,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            const DropdownMenuItem(
                              child: Text("Select city"),
                              value: "",
                            ),
                            ...DropDownlistData.map<DropdownMenuItem<String>>(
                              (e) {
                                return DropdownMenuItem(
                                  child: Text(e["title"]),
                                  value: (e["value"]),
                                );
                              },
                            ).toList(),
                          ],
                          onChanged: (value) {
                            print("Value is selected $value");
                            setState(() {
                              dropDown = value!;
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 15,
                      right: 1,
                    ),
                    child: Checkbox(
                        value: ischecked,
                        activeColor: Colors.black,
                        onChanged: (newBool) {
                          setState(() {
                            ischecked = newBool;
                          });
                        })),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Text(
                    "I have a referral code",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 24,
                right: 24,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                  ),
                  hintText: "Enter referal code",
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27, left: 24, right: 24),
              child: SizedBox(
                width: 342,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
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
