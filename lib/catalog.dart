import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
    Item(
      1,
      "iPhone 12 ",
      "12th gen iPhone",
      999,
      "black",
      "assets/images/iphone12.jpg",
    ),
    
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item(this.id, this.name, this.desc, this.price, this.color, this.img);
}
