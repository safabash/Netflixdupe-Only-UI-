import 'package:flutter/material.dart';
import 'package:netflixdupe/core/colors/colors.dart';
import 'package:netflixdupe/core/constants.dart';
import 'package:netflixdupe/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflixdupe/presentation/widgets/video_widger.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('FEB',
                  style: TextStyle(
                    fontSize: 16,
                    color: kGreyColor,
                  )),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(
              width: size.width - 50,
              height: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VideoWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TALL GIRL 2',
                        style: TextStyle(
                            fontSize: 35,
                            letterSpacing: -2,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          CustomButtonWidget(
                            title: 'Remind me',
                            icon: Icons.alarm,
                            iconSize: 20,
                            textSize: 12,
                          ),
                          kwidth,
                          CustomButtonWidget(
                            title: 'info',
                            icon: Icons.info,
                            iconSize: 20,
                            textSize: 16,
                          ),
                          kwidth
                        ],
                      )
                    ],
                  ),
                  kheight,
                  Text('Coming on Friday'),
                  kheight,
                  const Text('Tall girl 2',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kGreyColor,
                      )),
                  kheight,
                  Text(
                    'Landing the lead in the schook mudical is a dream come true for Jodi, until the  presssure sends her confidence and her relationship in to a tailspin',
                    style: TextStyle(
                      color: kGreyColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
