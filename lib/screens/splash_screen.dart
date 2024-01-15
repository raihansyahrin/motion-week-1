import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFCFFFE),
        body: Center(
          child: Container(
            child: Image.asset(
              'assets/images/stb-logo.png',
              width: 148,
              height: 151,
            ),
          ),
        ),
      ),
    );
  }
}
