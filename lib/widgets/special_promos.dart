import 'package:flutter/material.dart';

import 'package:globe/common/promo_card.dart';
import 'package:globe/common/title_and_view_all.dart';
import 'package:globe/themes/colors.dart';
import 'package:globe/modules/promos.dart';

class SpecialPromos extends StatelessWidget {
  final Data data;
  const SpecialPromos({
     this.data
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.COLOR_WHITE,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleViewAll(title: data.title, titlecolor: data.titlecolor),
          PromoCard(
            name: data.name,
            cardheading: data.cardheading,
            subheading: data.subheading,
            createpromos: data.createpromos, 
            bgurl:data.bgurl,
            cardheadingcolor: data.cardheadingcolor
          )
      ],)
    );
  }
}