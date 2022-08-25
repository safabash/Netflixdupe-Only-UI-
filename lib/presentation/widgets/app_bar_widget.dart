import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixdupe/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(title,
              style: GoogleFonts.montserrat(
                  fontSize: 30, fontWeight: FontWeight.bold)),
          const Spacer(),
          Icon(
            Icons.cast,
            color: Colors.white,
            size: 30,
          ),
          kwidth,
          Container(
            width: 30,
            height: 30,
            color: Colors.blue,
          ),
          kwidth,
        ],
      ),
    );
  }
}
