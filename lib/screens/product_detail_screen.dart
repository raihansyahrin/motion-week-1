import 'package:flutter/material.dart';
import 'package:raihansyahrin_motionintern_week_1/screens/transaction_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        surfaceTintColor: Color(0xFFFCFFFE),
        backgroundColor: Color(0xFFFCFFFE),
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.chevron_left_rounded,
            size: 40,
          ),
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
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.favorite,
                color: isFavorite ? Colors.pink : Color(0xFFCFCFCF),
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 380,
                  height: 400,
                  child: Image.asset('assets/images/coffe-image.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chocolate \nFrappucino",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      "\$20.00",
                      style: TextStyle(
                        color: Color(0xFF00623B),
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xFF6D6D6D),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xFF6D6D6D),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransactionScreen())),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Color(0xFF00623B),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Add to Bag",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
