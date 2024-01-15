import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['All', 'Coffee', 'Tea', 'Drink'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // alignment: Alignment.topCenter,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                    color: index == selectedIndex
                        ? Color(0xFF00623B)
                        : Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: index == selectedIndex
                        ? Colors.white
                        : Color(0xFF4D4D4D),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: categories.length),
    );
  }
}
