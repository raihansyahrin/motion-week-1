import 'package:flutter/material.dart';
import 'package:raihansyahrin_motionintern_week_1/screens/home_screen.dart';
import 'package:raihansyahrin_motionintern_week_1/screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFCFFFE)),
      home: HomeScreen(),
    );
  }
}
