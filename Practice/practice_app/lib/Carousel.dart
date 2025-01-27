import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Imagelist = [
    "assets/Criss.jpg",
    "assets/Egg.jpg",
    "assets/finger.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.red,
                  weight: 11.33,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 110,
                left: 26,
              ),
              child: Text(
                "Masood Fakish Rd Lane Number 2...",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // SizedBox(
          //   height: height * 0.2,
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       Container(
          //         height: MediaQuery.of(context).size.height * 0.2,
          //         width: MediaQuery.of(context).size.width * 0.5,
          //         color: Colors.amber,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Container(
          //         height: MediaQuery.of(context).size.height * 0.2,
          //         width: MediaQuery.of(context).size.width * 0.5,
          //         color: Colors.black,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Container(
          //         height: MediaQuery.of(context).size.height * 0.2,
          //         width: MediaQuery.of(context).size.width * 0.5,
          //         color: Colors.blueAccent,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Container(
          //         height: MediaQuery.of(context).size.height * 0.2,
          //         width: MediaQuery.of(context).size.width * 0.5,
          //         color: Colors.brown,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Container(
          //         height: MediaQuery.of(context).size.height * 0.2,
          //         width: MediaQuery.of(context).size.width * 0.5,
          //         color: Colors.green,
          //       ),
          //     ],
          //   ),
          // ),
          CarouselSlider.builder(
              itemCount: Imagelist.length,
              itemBuilder: ((context, index, realIndex) => SizedBox(
                    width: MediaQuery.of(context).size.width * double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.green,
                      child: Image.asset(Imagelist[index]),
                    ),
                  )),
              options: CarouselOptions(
                  height: 200,
                  scrollPhysics: BouncingScrollPhysics(),
                  autoPlay: true,
                  initialPage: 0,
                  scrollDirection: Axis.horizontal)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: AnotherCarousel(
              images: [
                Image.asset("assets/Criss.jpg"),
                Image.asset("assets/Criss.jpg"),
              ],
              
              dotSize: 5,
              dotBgColor: Colors.transparent,
              dotColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
