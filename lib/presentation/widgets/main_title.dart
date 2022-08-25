import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixdupe/core/colors/colors.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
          fontSize: 22,
          color: kWhitecolor,
          fontWeight: FontWeight.bold,
        ));
  }
}
