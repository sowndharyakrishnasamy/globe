import 'package:flutter/material.dart';
import 'package:globe/common/promo_card.dart';
import 'package:globe/common/gradient_heading.dart';
import 'package:globe/themes/colors.dart';
import 'package:globe/common/promos.dart';
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
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: GradientHeading(
              text:data.title,
              color:data.titlecolor
              ),
          ),
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