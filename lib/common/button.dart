import 'package:flutter/material.dart';

import 'package:globe/themes/colors.dart';

class Button extends StatelessWidget {  
  final String btntext;
  final Color textcolor;
  final double width;
  Button({
    @required this.btntext,
    @required this.textcolor,
    @required this.width
    });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      color: AppColors.COLOR_WHITE,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color:AppColors.COLOR_BLACK),
        ),
        onPressed: () {},
        child: 
          Text(
            btntext,
            style: Theme.of(context).textTheme.subtitle2.copyWith(color:AppColors.COLOR_BLACK),
            ),
          color: AppColors.COLOR_WHITE,
          textColor: textcolor,
          padding: const EdgeInsets.fromLTRB(0, 17, 0, 17),
        ),
    );
  }
}