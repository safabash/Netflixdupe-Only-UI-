import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixdupe/core/constants.dart';
import 'package:netflixdupe/presentation/widgets/app_bar_widget.dart';

import '../../core/colors/colors.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: 'Downloads',
            )),
        body: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: ((context, index) => _widgetList[index]),
          separatorBuilder: ((context, index) => SizedBox(
                height: 25,
              )),
          itemCount: _widgetList.length,
        ));
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final List imageList = [
    "https://www.themoviedb.org/t/p/w1280/ryKwNlAfDXu0do6SX9h4G9Si1kG.jpg",
    "https://www.themoviedb.org/t/p/w1280/YksR65as1ppF2N48TJAh2PLamX.jpg",
    "https://www.themoviedb.org/t/p/w1280/stTEycfG9928HYGEISBFaG1ngjM.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhitecolor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        Text(
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            'We will download a personalized selection of \nmovies and shows for you, so there is \nalways something to watch on your\n device'),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  radius: size.width * 0.37,
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: EdgeInsets.only(left: 130, bottom: 55, top: 20),
                angle: 20,
                size: Size(size.width * 0.45, size.width * 0.5),
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: EdgeInsets.only(right: 130, bottom: 55, top: 20),
                angle: -20,
                size: Size(size.width * 0.45, size.width * 0.5),
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: EdgeInsets.only(bottom: 20, top: 20),
                size: Size(size.width * 0.47, size.width * 0.6),
                radius: 7,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: kbuttonColorBlue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kWhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          onPressed: () {},
          color: kbuttonColorWhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kblackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: kWhitecolor,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    this.radius = 10,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageList))),
      ),
    );
  }
}
