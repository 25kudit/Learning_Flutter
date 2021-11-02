// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/mydrawer.dart';

class homepage extends StatelessWidget {
  final num days = 46.001;
  final String lang = "dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog Apk"),
      ),
      body: Center(
        child: Container(
          child: Text("Learning $lang and git in $days days !"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
