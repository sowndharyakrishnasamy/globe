import 'package:flutter/material.dart';
import 'package:globe/themes/colors.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/resources/images.dart';

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
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: brand.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        height: 180,
                        width: 140,
                        padding: const EdgeInsets.fromLTRB(16, 20, 0, 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(brand[index]['bgimage']),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image(
                              image: AssetImage(brand[index]['brandimage']),
                              fit: BoxFit.cover,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: '${brand[index]["points"] }',
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
                                  brand[index]['text1'],
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                Text(
                                  brand[index]['text2'],
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ],
                            )
                          ],
                        ),
                      ));
                },
              ),
            ),
          ],
        ));
  }
}
