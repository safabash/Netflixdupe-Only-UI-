import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixdupe/core/colors/colors.dart';
import 'package:netflixdupe/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kradius10,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w1280/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg'))),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: kWhitecolor,
            child: Text(
              '$index',
              style: TextStyle(
                  fontSize: 140,
                  color: kblackColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
          ),
        ),
      ]),
    );
  }
}
