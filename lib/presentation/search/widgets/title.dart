import 'package:flutter/cupertino.dart';

import '../../../core/colors/colors.dart';

class SearchTextTitle extends StatelessWidget {
  SearchTextTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  String title;
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
