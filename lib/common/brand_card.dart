import 'package:flutter/material.dart';

import 'package:globe/themes/colors.dart';

class BrandCard extends StatelessWidget {
  final String bgimage;
  final String brandimage;
  final int points;
  final String text1;
  final String text2;

  BrandCard({
    @required this.bgimage,
    @required this.brandimage,
    @required this.points,
    @required this.text1,
    @required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        height: double.infinity,
                        width: MediaQuery.of(context).orientation == Orientation.landscape ? MediaQuery.of(context).size.width * 0.28 :
          MediaQuery.of(context).size.width * 0.4,
                        padding: const EdgeInsets.fromLTRB(16, 20, 0, 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(bgimage),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image(
                              image: AssetImage(brandimage),
                              fit: BoxFit.cover,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: '${ points } ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3
                                      .copyWith(color: AppColors.COLOR_WHITE),
                                ),
                                TextSpan(
                                  text: 'Pts',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                          color: AppColors.COLOR_WHITE,
                                          fontSize: 14),
                                )
                              ]),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  text1,
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                Text(
                                  text2,
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ],
                            )
                          ],
                        ),
       ));
  }
}