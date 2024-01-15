import 'package:flutter/material.dart';
import 'package:raihansyahrin_motionintern_week_1/screens/home_screen.dart';
import 'package:raihansyahrin_motionintern_week_1/screens/product_detail_screen.dart';
import 'package:raihansyahrin_motionintern_week_1/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFCFFFE)),
            home: HomeScreen(),
          );
        }
      },
    );
  }
}

// return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFCFFFE)),
//       home: SplashScreen(),
//     );