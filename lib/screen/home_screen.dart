import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        surfaceTintColor: Color(0xFFFCFFFE),
        backgroundColor: Color(0xFFFCFFFE),
        elevation: 0,
        leading: Icon(
          Icons.wrap_text_rounded,
          size: 30,
        ),
        title: Container(
          child: Image.asset(
            'assets/images/stb-logo.png',
            width: 58,
            height: 59,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
          ),
        ],
      ),
    );
  }
}
