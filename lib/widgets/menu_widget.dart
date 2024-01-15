import 'package:flutter/material.dart';
import 'package:raihansyahrin_motionintern_week_1/models/menu_model.dart';
import 'package:raihansyahrin_motionintern_week_1/screens/product_detail_screen.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  List<MenuModel> menu = [];

  void initModel() {
    menu = MenuModel.getMenu();
  }

  @override
  Widget build(BuildContext context) {
    initModel();
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => ProductDetailScreen())),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 361.73,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 20, right: 20),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              width: 256.32,
              decoration: BoxDecoration(
                color: Color(0xFFFCFFFE),
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(15, 0, 0, 0),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      menu[index].photo,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          menu[index].name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              menu[index].price,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF00623B),
                              ),
                            ),
                            Icon(
                              Icons.favorite,
                              color: menu[index].favorite
                                  ? Colors.red
                                  : Color(0xFFCFCFCF),
                              size: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 25,
          ),
          itemCount: menu.length,
        ),
      ),
    );
  }
}
