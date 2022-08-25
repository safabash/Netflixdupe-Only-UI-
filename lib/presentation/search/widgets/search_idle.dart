import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixdupe/core/colors/colors.dart';
import 'package:netflixdupe/core/constants.dart';
import 'package:netflixdupe/presentation/search/widgets/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/p1F51Lvj3sMopG948F5HsBbl43C.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Top Searches'),
        kheight,
        Expanded(
          child: ListView.separated(
            itemBuilder: ((context, index) => const TopSearchItemTile()),
            separatorBuilder: ((context, index) => kheight20),
            itemCount: 10,
            shrinkWrap: true,
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Movie Name',
              style: TextStyle(
                  color: kWhitecolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kWhitecolor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kblackColor,
            radius: 23,
            child: Center(
              child: Icon(
                CupertinoIcons.play_fill,
                color: kWhitecolor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
