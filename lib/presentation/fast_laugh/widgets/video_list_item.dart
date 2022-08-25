import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixdupe/core/colors/colors.dart';
import 'package:netflixdupe/main.dart';

class VideoListItemWidget extends StatelessWidget {
  const VideoListItemWidget({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.accents[index],
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //left side
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.volume_off,
                        size: 30,
                        color: kWhitecolor,
                      )),
                ),
              ),
              //right side
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg'),
                    ),
                  ),
                  VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                  VideoActionWidget(icon: Icons.add, title: 'My List'),
                  VideoActionWidget(icon: Icons.share, title: 'Share'),
                  VideoActionWidget(icon: Icons.play_arrow, title: 'Play'),
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class VideoActionWidget extends StatelessWidget {
  const VideoActionWidget({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhitecolor,
            size: 30,
          ),
          Text(title, style: const TextStyle(fontSize: 16, color: kWhitecolor))
        ],
      ),
    );
  }
}
