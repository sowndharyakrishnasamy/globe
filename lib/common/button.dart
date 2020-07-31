import 'package:flutter/material.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/themes/colors.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            Strings.FIND_OUT_MORE,
            style: Theme.of(context).textTheme.subtitle2.copyWith(color:AppColors.COLOR_BLACK),
            ),
          color: AppColors.COLOR_WHITE,
          textColor: AppColors.COLOR_BLACK,
          padding: const EdgeInsets.fromLTRB(0, 17, 0, 17),
        ),
    );
  }
}