import 'package:flutter/material.dart';
import 'package:netflixdupe/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: kradius10,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.themoviedb.org/t/p/w1280/9pCoqX24a6rE981fY1O3PmhiwrB.jpg'))),
      ),
    );
  }
}
