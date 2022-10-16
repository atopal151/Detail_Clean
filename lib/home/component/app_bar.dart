import 'package:detail_clean/contact/contact.dart';
import 'package:detail_clean/detail/about.dart';
import 'package:detail_clean/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../component/default_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Image.asset(
              "images/icn.png",
              height: 45,
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(width: 10),
          const Text(
            "Denizli Detay Temizlik",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItem(
            barColor: kPrimaryColor,
            title: "AnaSayfa",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          MenuItem(
            barColor: kTextcolor,
            title: "Hakkımızda",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()));
            },
          ),
          DefaultButton(
            text: "Bize Ulaş",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()));
            },
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({Key? key, required this.title, required this.press, required this.barColor})
      : super(key: key);
  final Color barColor;
  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(

          title.toUpperCase(),
          style: TextStyle(
            color: barColor.withOpacity(0.6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
