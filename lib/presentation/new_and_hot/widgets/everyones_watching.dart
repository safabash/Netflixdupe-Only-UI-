import 'package:flutter/material.dart';
import 'package:netflixdupe/core/colors/colors.dart';
import 'package:netflixdupe/core/constants.dart';
import 'package:netflixdupe/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflixdupe/presentation/widgets/video_widger.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text('Friends',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kWhitecolor,
            )),
        kheight,
        const Text(
          "This hit sitcom followa the merry adventures of six 20-something pals as they navigate the pitfalls of work,life and love in 1990's",
          style: TextStyle(
            color: kGreyColor,
          ),
        ),
        kheight50,
        VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              title: 'Share',
              icon: Icons.share,
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              title: 'My List',
              icon: Icons.add,
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              title: 'Remind',
              icon: Icons.play_arrow,
              iconSize: 25,
              textSize: 16,
            ),
            kwidth
          ],
        ),
      ],
    );
  }
}
