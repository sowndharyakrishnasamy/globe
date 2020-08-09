import 'package:flutter/material.dart';

import 'package:globe/themes/colors.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/resources/images.dart';
import 'package:globe/common/brand_card.dart';

class Brand extends StatelessWidget {
  final List<Map<String, dynamic>> brand = [
    {
      'bgimage': Images.FOOTSTEPS,
      'brandimage': Images.ALDO,
      'points': Strings.POINTS,
      'text1': Strings.ALDO_TEXT1,
      'text2': Strings.ALDO_TEXT2,
    },
    {
      'bgimage': Images.GIRL,
      'brandimage': Images.RAFFLES,
      'points': Strings.POINTS,
      'text1': Strings.RAFFLES_TEXT1,
      'text2': Strings.RAFFLES_TEXT2,
    },
    {
      'bgimage': Images.FOOTSTEPS,
      'brandimage': Images.ALDO,
      'points': Strings.POINTS,
      'text1': Strings.ALDO_TEXT1,
      'text2': Strings.ALDO_TEXT2,
    },
  ];
  @override
  Widget build(BuildContext context) {
    final _islandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        color: AppColors.COLOR_WHITE,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              Strings.HERE_IS_WHAT,
              style:
                  Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 15,color:AppColors.COLOR_LIGHT_GREY),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: _islandscape ? MediaQuery.of(context).size.height * 0.45 : 
              MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: brand.length,
                itemBuilder: (BuildContext context, int index) {
                  return BrandCard(bgimage: brand[index]['bgimage'],
                                   brandimage: brand[index]['brandimage'],
                                   points: brand[index]["points"],
                                   text1: brand[index]["text1"],
                                   text2: brand[index]["text2"]);
                },
              ),
            ),
          ],
        ));
  }
}
