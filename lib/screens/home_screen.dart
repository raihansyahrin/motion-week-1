import 'package:flutter/material.dart';
import 'package:raihansyahrin_motionintern_week_1/widgets/category_selector_widget.dart';
import 'package:raihansyahrin_motionintern_week_1/widgets/menu_widget.dart';
import 'package:raihansyahrin_motionintern_week_1/widgets/search_field_widget.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Our way of loving \nyou back',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30),
                  SearchField(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            CategorySelector(),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF00623B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            MenuWidget(),
          ],
        ),
      ),
    );
  }
}
