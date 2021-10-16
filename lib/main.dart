import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/homepage.dart';

void main() {
  runApp(UditApk());
}

class UditApk extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: GoogleFonts.barlow().fontFamily
      ),
      initialRoute: "/login",
      routes: {
        "/home": (context) => homepage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
