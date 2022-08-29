import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixdupe/core/colors/colors.dart';
import 'package:netflixdupe/core/constants.dart';
import 'package:netflixdupe/main.dart';
import 'package:netflixdupe/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflixdupe/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflixdupe/presentation/new_and_hot/widgets/everyones_watching.dart';
import 'package:netflixdupe/presentation/widgets/app_bar_widget.dart';
import 'package:netflixdupe/presentation/widgets/video_widger.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: Text(
              'New & Hot',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
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
            bottom: TabBar(
                isScrollable: true,
                labelColor: kblackColor,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: kWhitecolor,
                indicator:
                    BoxDecoration(borderRadius: kradius30, color: kWhitecolor),
                tabs: [
                  Tab(
                    text: '🍿 Coming Soon',
                  ),
                  Tab(
                    text: "👀 Everyone's Watching",
                  )
                ]),
          ),
        ),
        body: TabBarView(
            children: [_buildComingSoon(), _buildEveryonesWatching()]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((BuildContext context, index) =>
            const ComingSoonWidget()));
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) =>
            EveryonesWatchingWidget());
  }
}
