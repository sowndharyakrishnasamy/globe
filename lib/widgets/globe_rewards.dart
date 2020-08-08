import 'package:flutter/material.dart';

import 'package:globe/common/gradient_heading.dart';
import 'package:globe/common/title_and_view_all.dart';
import 'package:globe/themes/colors.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/resources/images.dart';

class GlobeRewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.COLOR_WHITE,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleViewAll(title: Strings.GLOBE_REWARDS, titlecolor: [
              AppColors.COLOR_SAPPHIRE,
              AppColors.COLOR_LAVENDER_PINK,
            ],),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 10, 20, 20),
            width:double.infinity,
            height:90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [AppColors.COLOR_ORANGE,AppColors.COLOR_PALE_ORANGE],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                stops:[0.0,0.9],
                )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          Strings.YOUR_REWARDS,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                         '${Strings.REWARDS} Pts',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                     ],),
                    Image(image: AssetImage(Images.REWARDS)),
                ],
              ),
            )
            )
        ],
      )
    );
  }
}