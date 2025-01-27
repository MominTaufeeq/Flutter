import 'package:flutter/material.dart';
import 'package:flutter_chapter1/widget/MyDrawer.dart';
import 'package:flutter_chapter1/catalog/catalog.dart';

import '../widget/item_widget.dart';

class HomePage extends StatelessWidget {
  final int day = 30;
  final name = "Taufeeq";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModels.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Friends",
            style: TextStyle(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: dummyList.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: dummyList[index]);
              }),
        ),
        drawer: MyDrawer());
  }
}
