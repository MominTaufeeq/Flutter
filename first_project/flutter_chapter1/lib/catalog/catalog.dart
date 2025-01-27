// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class Catalogitems {
//   final int id;
//   final String name;
//   final String desc;
//   final dynamic color;
//   final String image;
//   final int price;

//   Catalogitems({
//     required this.id,
//     required this.name,
//     required this.desc,
//     required this.color,
//     required this.image,
//     required this.price,
//   });
// }

// class Item {
//   String get image => image;
//   String get name => name;
//   String get desc => desc;
// }

// List catalogitemslist = [
//   Catalogitems(
//       id: 1,
//       name: "Iphone 12",
//       desc: "ddfdfed",
//       color: Colors.red,
//       image:
//           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
//       price: 5555)
// ];
class CatalogModels{
 static final items = [
  Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
];
}
class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image
  });
}


