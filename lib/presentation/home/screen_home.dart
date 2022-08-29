import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixdupe/core/colors/colors.dart';
import 'package:netflixdupe/core/constants.dart';
import 'package:netflixdupe/presentation/home/widgets/background_card_widget.dart';
import 'package:netflixdupe/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflixdupe/presentation/home/widgets/number_card.dart';
import 'package:netflixdupe/presentation/home/widgets/number_title_card.dart';
import 'package:netflixdupe/presentation/widgets/main_card.dart';
import 'package:netflixdupe/presentation/widgets/main_title.dart';

import '../widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: ((BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        BackgroundCard(),
                        const MainTitleCard(
                          title: 'Released in the past year',
                        ),
                        kheight,
                        MainTitleCard(title: 'Trending Now'),
                        kheight,
                        NumberTitleCard(),
                        kheight,
                        MainTitleCard(
                          title: 'Tense Dramas',
                        ),
                        kheight,
                        MainTitleCard(title: 'South Indian Cinema')
                      ],
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 100,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      'https://cdn.vox-cdn.com/thumbor/_bCV_w5p7SrZVsZG1RvRAhBOeBU=/39x0:3111x2048/1820x1213/filters:focal(39x0:3111x2048):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png',
                                      width: 70,
                                      height: 70,
                                    ),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'TV Shows',
                                      style: kHomeTitleText,
                                    ),
                                    Text('Movies', style: kHomeTitleText),
                                    Text('Categories', style: kHomeTitleText)
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight,
                  ],
                ),
              );
            })));
  }
}
