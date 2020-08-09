import 'package:flutter/material.dart';

import 'package:globe/themes/colors.dart';
import 'package:globe/resources/strings.dart';

class Recommended extends StatelessWidget {
  final int activeIndex;
  final List recommended;

  Recommended({
    @required this.activeIndex,
    @required this.recommended,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: ListView.builder( scrollDirection: Axis.horizontal,
              itemCount: recommended.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:Container(
                       height: 65,
                        width: 160,
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        decoration: BoxDecoration(
                          color: AppColors.COLOR_LIGHTISH_BLUE,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                 recommended[index]['new'] ? Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(4, 3, 4, 3),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            AppColors.COLOR_SKY_LIGHT,
                                            AppColors.COLOR_SKY
                                          ],
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                        ), // green shaped
                                      ),
                                      child: Text(
                                        Strings.NEW,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ),
                                  ): Container(height: 17,),
                                  Text(
                                    recommended[index]['subtitle'],
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    recommended[index]['sub_desc'],
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  )
                                ],
                              ),

                    )
                );
              })
    );
  }
}