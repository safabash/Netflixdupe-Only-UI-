import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixdupe/core/colors/colors.dart';
import 'package:netflixdupe/core/constants.dart';

import 'custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(kmainImage))),
        ),
        Positioned(
          bottom: 15,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtonWidget(
                    title: 'My List',
                    icon: Icons.add,
                  ),
                  _PlayButton(),
                  CustomButtonWidget(
                    title: 'info',
                    icon: Icons.info,
                  ),
                ]),
          ),
        )
      ],
    );
  }

  TextButton _PlayButton() {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kWhitecolor)),
        icon: Icon(
          Icons.play_arrow,
          size: 30,
          color: kblackColor,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: kblackColor),
          ),
        ));
  }
}
