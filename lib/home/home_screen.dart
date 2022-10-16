import 'package:flutter/material.dart';
import 'component/app_bar.dart';
import 'component/body.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const  [
            CustomAppBar(),
            Spacer(),
            Body(),
            Spacer(flex: 2,),

          ],
        ),
      ),
    );
  }
}

