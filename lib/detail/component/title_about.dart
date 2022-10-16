import 'package:flutter/material.dart';

class TitleAbout extends StatelessWidget {
  const TitleAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.50),
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Center(
              child: Text(
                "Denizli Detay Temizlik",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                "images/backg.jpg",
                height: 500,
                alignment: Alignment.topCenter,
              ),
            ),
            Center(
              child: Image.asset(
                "images/backg.jpg",
                height: 500,
                alignment: Alignment.topCenter,
              ),
            ),
            Center(
              child: Image.asset(
                "images/backg.jpg",
                height: 500,
                alignment: Alignment.topCenter,
              ),
            ),
            Center(
              child: Image.asset(
                "images/backg.jpg",
                height: 500,
                alignment: Alignment.topCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
