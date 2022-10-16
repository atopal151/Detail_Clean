import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../contact/contact.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Detay".toUpperCase(),
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            "Temizlik".toUpperCase(),
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
         const SizedBox(height: 20,),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt um dolor sit amet, consectetur adipiscing edo eiu dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labor Lorem ipsum dolor sit amet, consectetur adipiscing eleiusmod tempor incididunt ut labor",
            style: TextStyle(
              fontSize: 21,
              color: Colors.white.withOpacity(0.45),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FittedBox(
            // Now it just take the required spaces
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(34),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contact()));
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        color: kTextcolor,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: kPrimaryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      "BİZE ULAŞIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
