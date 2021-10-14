import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(UditApk());
}

class UditApk extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage()
    );
  }
}
