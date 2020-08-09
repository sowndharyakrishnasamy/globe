import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:globe/common/title_and_view_all.dart';
import 'package:globe/resources/images.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/themes/colors.dart';
import 'package:globe/common/latestpromos_card.dart';

class LatestPromos extends StatelessWidget {
  final List<Map<String, dynamic>> latestpromos = [
    {
      'bgimage': Images.GIRLHEADPHONE,
      'promoimage': Images.SPOTIFY,
      'promoname': Strings.PROMO_NAME1,
      'promosubname': Strings.PROMO_SUBNAME1,
      'subscribe': Strings.SUBSCRIBE_FOR,
      'amount': Strings.SUBSCRIBE_AMOUNT,
    },
    {
      'bgimage': Images.CRAZYGIRL,
      'promoimage': Images.FACEBOOK,
      'promoname': Strings.PROMO_NAME2,
      'promosubname': Strings.PROMO_SUBNAME2,
      'subscribe': Strings.FB_TITLE,
      'amount': Strings.FB_AMOUNT,
    },
    {
      'bgimage': Images.GIRLHEADPHONE,
      'promoimage': Images.FACEBOOK,
      'promoname': Strings.PROMO_NAME1,
      'promosubname': Strings.PROMO_SUBNAME1,
      'subscribe': Strings.SUBSCRIBE_FOR,
      'amount': Strings.SUBSCRIBE_AMOUNT,
    }
  ];
  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
        color: AppColors.COLOR_WHITE,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleViewAll(
              title: Strings.LATEST_PROMOS,
              titlecolor: [
                AppColors.COLOR_SAPPHIRE,
                AppColors.COLOR_LAVENDER_PINK
              ],
              view: Strings.VIEW_ALL,
            ),
            SizedBox(height: 10),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                height: isLandscape ? MediaQuery.of(context).size.height * 0.5: 
                MediaQuery.of(context).size.height * 0.28,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: latestpromos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return LatestPromosCard(
                      bgimage: latestpromos[index]['bgimage'],
                      promoimage: latestpromos[index]['promoimage'],
                      promoname: latestpromos[index]['promoname'],
                      promosubname: latestpromos[index]['promosubname'],
                      subscribe: latestpromos[index]['subscribe'],
                      amount: latestpromos[index]['amount'],
                    );
                  },
                ))
          ],
        ));
  }
}
