// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/themes.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'pages/homepage.dart';

void main() {
  runApp(UditApk());
}

class UditApk extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      initialRoute: "/home",
      routes: {
        "/home": (context) => homepage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
