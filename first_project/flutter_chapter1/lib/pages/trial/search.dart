// import 'package:flutter/material.dart';
// import 'package:flutter_chapter1/pages/trial/movies_modal.dart';

// class search extends StatefulWidget {
//   const search({super.key});

//   @override
//   State<search> createState() => _searchState();
// }

// class _searchState extends State<search> {
//   List<movie_modal> Main_movielist = [
//     movie_modal("hello", 9.2, 1990),
//     movie_modal("abc", 2.5, 1990),
//     movie_modal("asma", 4.5, 1996),
//     movie_modal("wedge", 5.5, 1992),
//   ];

//   List<movie_modal> Display_list = List.from(Main_movielist);
//   void Updatelist(String value) {
//     setState(() {
//       Display_list = Main_movielist.where((element) =>
//               element.movie_title!.toLowerCase().contains(value.toLowerCase()))
//           .toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 49, 3, 135),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 60, 22, 131),
//         title: Text(
//           "SearchBar",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 15, top: 30),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           Text(
//             "Search for a movie",
//             style: TextStyle(fontSize: 18, color: Colors.white),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               onChanged: (value) => Updatelist(value),
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           ListView.builder(
//               itemCount: Display_list.length,
//               itemBuilder: ((context, index) => ListTile(
//                     title: Text(Display_list[index].movie_title!),
//                     subtitle: Text('${Display_list[index].rel_year!}'),
//                     trailing: Text(
//                       "${Display_list[index].rating}",
//                       style: TextStyle(color: Colors.amber),
//                     ),
//                     // leading:
//                     //     Image.network(Display_list[index].movie_poster_url!),
//                   )))
//         ]),
//       ),
//     );
//   }
// }

// class Main_movielist {}
