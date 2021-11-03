// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/catalog.dart';
import 'package:flutter_application_1/widgets/itemwidget.dart';
import 'package:flutter_application_1/widgets/mydrawer.dart';

class homepage extends StatelessWidget {
  final dlist = List.generate(50, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog Apk"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dlist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dlist[index]
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
