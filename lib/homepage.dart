import 'package:flutter/material.dart';

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
          child: Text("Learning ${lang} and git in $days days !"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
