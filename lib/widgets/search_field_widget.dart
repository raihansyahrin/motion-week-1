import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFF2F2F2),
            ),
            child: TextField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(106, 22, 27, 40),
                    fontWeight: FontWeight.w400),
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Icon(
                    Icons.search_rounded,
                    size: 24,
                  ),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
