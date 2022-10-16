import 'package:flutter/material.dart';

import '../colors.dart';
import 'component/title_about.dart';


class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/backg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(child: TitleAbout()),
      ),
    );
  }


}




