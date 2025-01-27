import 'package:another_carousel_pro/another_carousel_pro.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlidePage extends StatefulWidget {
  const SlidePage({super.key});

  @override
  State<SlidePage> createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  List Imagelist = [
    "assets/images/paymentslide.svg",
    "assets/images/slide2.svg",
    "assets/images/Croods.svg",
  ];
  List Textlist = [
    "Pay all your payments just\n by your phone",
    "All your payments is secured",
    "Open certificatesand by your phone",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              PageView.builder(
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: SizedBox(
                      height: 200,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(Imagelist[index]),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 21, right: 21, top: 18),
                              child: Center(
                                child: Text(
                                  Textlist[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ]),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
