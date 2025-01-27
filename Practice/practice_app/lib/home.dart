import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isvisibility = true;
  bool isnotvisibility = false;
  List colorlist = [
    const Color.fromARGB(255, 147, 195, 234),
    Color.fromARGB(255, 235, 230, 174),
  ];
  List imagelist = [
    "assets/home/fifty.png",
    "assets/home/fourty.png",
    "assets/home/thirty.png",
    "assets/home/twentyfive.png",
    "assets/home/twenty.png",
    "assets/home/fifteen.png",
    "assets/home/ten.png",
    "assets/home/Flat 75 Offer@2x.png",
    "assets/home/Flat 300 Off@2x.png",
    "assets/home/Free Delivery Offer@2x.png",
  ];

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: Column(
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 26,
                  ),
                  child: CarouselSlider.builder(
                      itemCount: colorlist.length,
                      itemBuilder: ((context, index, realIndex) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: colorlist[index],
                            ),
                          )),
                      options: CarouselOptions(
                          enlargeCenterPage: true,
                          viewportFraction: 0.7,
                          height: 168,
                          scrollPhysics: AlwaysScrollableScrollPhysics(),
                          autoPlay: true,
                          initialPage: 0,
                          scrollDirection: Axis.horizontal)),
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.2,
                //   child: AnotherCarousel(
                //     images: [
                //       Image.asset("assets/Criss.jpg"),
                //       Image.asset("assets/Criss.jpg"),
                //     ],
                //     dotSize: 5,
                //     dotBgColor: Colors.transparent,
                //     dotColor: Colors.black,
                //   ),
                // ),
              ]),
              Padding(
                padding: const EdgeInsets.only(
                  top: 22,
                  left: 6,
                  right: 190,
                ),
                child: Text(
                  "Popular cuisines around you",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/pizza.png",
                          height: 80,
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Ice Cream",
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/rice.png",
                          height: 80,
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Rice",
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/burger.png",
                          height: 80,
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Burger",
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/cake.png",
                          height: 80,
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Cake",
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/pizza.png",
                          height: 80,
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Ice Cream",
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/rice.png",
                          height: 80,
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Rice",
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/burger.png",
                          height: 80,
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Burger",
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/cake.png",
                          height: 80,
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Cake",
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                ),
                child: Visibility(
                  visible: isvisibility,
                  child: Container(
                    height: 24,
                    width: 374,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 159,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "See More",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            ba
                            icon: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.black,
                              
                            ),
                            label: Text(
                              "",
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.all(color: Colors.grey)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 22,
                  right: 230,
                ),
                child: Text(
                  "Top offers around you",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: CarouselSlider.builder(
                        itemCount: imagelist.length,
                        itemBuilder: ((context, index, realIndex) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Card(
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                imagelist[index],
                                width: 104,
                                height: 104,
                              ),
                            ))),
                        options: CarouselOptions(
                            padEnds: false,
                            autoPlay: false,
                            enableInfiniteScroll: false,
                            enlargeCenterPage: false,
                            viewportFraction: 0.3,
                            height: 115,
                            scrollPhysics: BouncingScrollPhysics(),
                            initialPage: 0,
                            scrollDirection: Axis.horizontal)),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              right: 8,
                            ),
                            child: Container(
                              height: 32,
                              width: 72,
                              child: Row(
                                children: [
                                  Icon(Icons.photo_filter_sharp),
                                  Text(
                                    "Filter",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.brown),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.brown),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 8,
                            ),
                            child: Container(
                              height: 32,
                              width: 92,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.pin_drop_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    "Near by",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontSize: 13),
                                  ),
                                  Icon(
                                    Icons.close_outlined,
                                    size: 18,
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 244, 234, 144),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 8,
                            ),
                            child: Container(
                              height: 32,
                              width: 92,
                              child: Row(
                                children: [
                                  Icon(Icons.topic_outlined),
                                  Text(
                                    "Top rate",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 8,
                            ),
                            child: Container(
                              height: 32,
                              width: 102,
                              child: Row(
                                children: [
                                  // Icon(Icons.),
                                  Text(
                                    "Fast Delivery",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 8,
                            ),
                            child: Container(
                              height: 32,
                              width: 135,
                              child: Row(
                                children: [
                                  Icon(Icons.topic_outlined),
                                  Text(
                                    "Pocket Friendly",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20,
                            ),
                            child: Container(
                              height: 32,
                              width: 92,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      "New arrival",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 26,
                  right: 200,
                  left: 8,
                ),
                child: Text(
                  "123 Restaurant around you",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 8,
                  top: 16,
                ),
                child: Container(
                  height: 104,
                  width: 360,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Image.asset(
                          "assets/home/Mezbaan Profile.png",
                          height: 72,
                          width: 72,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 19,
                          left: 10,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 80,
                              ),
                              child: Text(
                                "Mezbaan Hotel",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 18, right: 80),
                              child: Text(
                                "Indian, Chinese, Mughlai",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  top: 5,
                                ),
                                child: Container(
                                  height: 0.5,
                                  width: 210.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 40,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: const Color.fromARGB(
                                              255, 245, 182, 88),
                                          size: 15,
                                        ),
                                        Text(
                                          "4.0",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 244, 219, 181),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: Container(
                                      height: 24,
                                      width: 64,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.av_timer_outlined,
                                            color: Colors.green,
                                            size: 15,
                                          ),
                                          Text(
                                            "30 min",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 200, 241, 202),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    width: 100,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.currency_rupee_outlined,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                        Text(
                                          "250 for two",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 247, 218, 173),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 8,
                ),
                child: Container(
                  height: 120,
                  width: 360,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/home/image2.png",
                              height: 72,
                              width: 72,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 55,
                                left: 8,
                              ),
                              child: Container(
                                width: 56,
                                height: 24,
                                child: Center(
                                  child: Text(
                                    "15% OFF",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 19,
                          left: 10,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 110,
                              ),
                              child: Text(
                                "Fire Wings",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 18, right: 45),
                              child: Text(
                                "Burger, Pizza, Wings and more",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 112, top: 4),
                              child: Text("Shivaji Chowk",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  top: 5,
                                ),
                                child: Container(
                                  height: 0.5,
                                  width: 210.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 40,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: const Color.fromARGB(
                                              255, 245, 182, 88),
                                          size: 15,
                                        ),
                                        Text(
                                          "4.0",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 244, 219, 181),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: Container(
                                      height: 24,
                                      width: 64,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.av_timer_outlined,
                                            color: Colors.green,
                                            size: 15,
                                          ),
                                          Text(
                                            "30 min",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 200, 241, 202),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    width: 100,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.currency_rupee_outlined,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                        Text(
                                          "250 for two",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 247, 218, 173),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
