// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      child: ListTile(
        leading: Image.asset(item.img),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$"+item.price.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
            fontSize: 15),
            ),
           
      ),
    );
  }
}
