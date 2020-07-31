import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:globe/common/gradient_heading.dart';
import 'package:globe/common/subscribe_amount.dart';
import 'package:globe/resources/images.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/themes/colors.dart';
class LatestPromos extends StatelessWidget {
  final List<Map<String,dynamic>> latestpromos =[
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
    return Container(
      padding:const EdgeInsets.fromLTRB(20, 20, 0, 40),
      color:AppColors.COLOR_WHITE,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GradientHeading(
                text: Strings.LATEST_PROMOS,
                color: [
                  AppColors.COLOR_SAPPHIRE,
                  AppColors.COLOR_LAVENDER_PINK
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: GestureDetector(
                  child: Text(
                    Strings.VIEW_ALL,
                    style: TextStyle(
                      color: AppColors.COLOR_LIGHTISH_BLUE,
                      fontSize:13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height:10),
          Container(
            height:170,
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: latestpromos.length,
              itemBuilder: (BuildContext context,int index){
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      height: 170,
                      width:140,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(latestpromos[index]['bgimage']),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex:3,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(latestpromos[index]['promoimage'])
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '${latestpromos[index]['promoname']} ',
                                          style: Theme.of(context).textTheme.headline2.copyWith(fontSize:14),
                                        ),
                                        TextSpan(
                                          text: latestpromos[index]['promosubname'],
                                          style:Theme.of(context).textTheme.headline6.copyWith(fontSize:14),
                                        ),
                                      ]
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex:2,
                            child: SubscribeAmount(
                              subscribe: latestpromos[index]['subscribe'],
                              amount: latestpromos[index]['amount'],
                            ),
                          ),
                        ],
                      ),
                    )
                  );
              },
            )
          )
        ],
      )
    );
  }
}