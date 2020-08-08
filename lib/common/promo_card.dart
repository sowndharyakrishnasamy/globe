import 'package:flutter/material.dart';

import 'package:globe/common/gradient_heading.dart';
import 'package:globe/themes/colors.dart';

class PromoCard extends StatelessWidget {
  final String name;
  final String cardheading;
  final List<Color> cardheadingcolor;
  final String subheading;
  final String createpromos;
  final String bgurl;
  const PromoCard({
    @required this.name,
    @required this.cardheading,
    @required this.subheading,
    @required this.createpromos,
    @required this.bgurl,
    @required this.cardheadingcolor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 12, 20, 0),
      width: double.infinity,
      height: 160,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child:Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                bgurl,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex:3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          name,
                          style: Theme.of(context).textTheme.subtitle2.copyWith(color:Color.fromRGBO(255, 255, 255, 0.68)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                        ),
                        child: GradientHeading(
                          text: cardheading,
                          color: cardheadingcolor
                        ),
                      ),
                      Text(
                        subheading,
                        style: Theme.of(context).textTheme.headline6,
                      )
                    ],),
                ) ,
                ),
              Expanded(
                flex:2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(0, 0, 0, 0.3)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          createpromos,
                          style: Theme.of(context).textTheme.subtitle2.copyWith(color:AppColors.COLOR_WHITE)
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.chevron_right,
                          ),
                          color:AppColors.COLOR_WHITE,
                          onPressed: () {}
                        ),
                      ],),
                  ),
                )
               )
            ],)
        ) ,
        )
    );
  }
}