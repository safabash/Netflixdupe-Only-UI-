import 'package:flutter/material.dart';
import 'package:netflixdupe/presentation/home/widgets/number_card.dart';
import 'package:netflixdupe/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: 'Top 10 TV Shows in India Today'),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => NumberCard(
                      index: index + 1,
                    )),
          ),
        )
      ],
    );
  }
}
