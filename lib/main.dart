import 'package:day13/page1.dart';
import 'package:day13/page2.dart';
import 'package:day13/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "page1": (BuildContext context) => Page1(),
      "page2": (BuildContext context) => Page2(),
      "page3": (BuildContext context) => Page3(),
    }, home: Page1());
  }
}
