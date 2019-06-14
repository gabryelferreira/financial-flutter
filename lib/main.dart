import 'package:financial/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xFFFF7200),
        primaryColor: Color(0xFFFF7200),
      ),
      home: HomePage(),
    );
  }
}
