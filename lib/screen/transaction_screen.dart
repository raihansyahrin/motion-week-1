import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFFFE),
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
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              'assets/images/share-logo.png',
              height: 30,
            ),
          ),
        ],
      ),
      body: SafeArea(
        // bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //first card
                SizedBox(
                  height: 10,
                ),
                _detailTransaction(),
                SizedBox(
                  height: 40,
                ),
                _detailPesanan(),
                SizedBox(
                  height: 40,
                ),
                _buttonDownload(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector _buttonDownload(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => TransactionScreen())),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Color(0xFF00623B),
        ),
        padding: EdgeInsets.symmetric(vertical: 16),
        margin: EdgeInsets.symmetric(horizontal: 1),
        width: double.infinity,
        child: Center(
          child: Text(
            "Download E - Ticket",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Container _detailPesanan() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 188,
      margin: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.06),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 0.1,
            blurRadius: 10,
            offset: Offset(0, 5), // bottom shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Detail Pesanan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jenis Pesanan",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(174, 0, 0, 0),
                  ),
                ),
                Text(
                  "2x Frappucino - Monte",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nama Pemesan",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(174, 0, 0, 0),
                  ),
                ),
                Text(
                  "Asep Knalpot",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Pesanan",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(174, 0, 0, 0),
                  ),
                ),
                Text(
                  "Rp. 58,000",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _detailTransaction() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 326,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.06),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 0.1,
            blurRadius: 10,
            offset: Offset(0, 5), // bottom shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/succes-icon.png',
            width: 63.19,
            height: 63.19,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Transaksi Berhasil",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Rp. 58,000",
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const Divider(
            height: 20,
            thickness: 1.13,
            indent: 20,
            endIndent: 20,
            color: Color.fromARGB(62, 158, 158, 158),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Invoice Number",
                      style: TextStyle(
                        fontSize: 13.54,
                      ),
                    ),
                    Text(
                      "000085752257",
                      style: TextStyle(
                        fontSize: 13.54,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tanggal Transaksi",
                      style: TextStyle(
                        fontSize: 13.54,
                      ),
                    ),
                    Text(
                      "16 Juni 2023",
                      style: TextStyle(
                        fontSize: 13.54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jenis Pembayaran",
                      style: TextStyle(
                        fontSize: 13.54,
                      ),
                    ),
                    Text(
                      "QRIS",
                      style: TextStyle(
                        fontSize: 13.54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
