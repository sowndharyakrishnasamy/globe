import 'package:flutter/material.dart';

import 'package:globe/common/gradient_heading.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/themes/colors.dart';

class TitleViewAll extends StatelessWidget {
  final String title;
  final List<Color> titlecolor;
  final String view;

  const TitleViewAll({
    @required this.title,
    @required this.titlecolor,
    this.view,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 40, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GradientHeading(
            text: title,
            color: titlecolor,
          ),
          view != null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: GestureDetector(
                    child: Text(
                      view,
                      style: TextStyle(
                        color: AppColors.COLOR_LIGHTISH_BLUE,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              : Container(
                  width: 0,
                  height: 0,
                ),
        ],
      ),
    );
  }
}
