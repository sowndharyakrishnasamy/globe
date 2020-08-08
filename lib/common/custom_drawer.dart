import 'package:flutter/material.dart';

import 'package:globe/resources/images.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/themes/colors.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(20, 25, 0, 20),
            decoration: BoxDecoration(
              color: AppColors.COLOR_PURPLEISH_BLUE
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(Images.PROFILE_BIG),
                  radius: 50,
                ),
                SizedBox(height: 10,),
                Text(Strings.PREPAID,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(color:AppColors.COLOR_WHITE.withOpacity(0.64)),
                ),
                SizedBox(height: 5,),
                Text(Strings.NUMBER,
                  style: Theme.of(context).textTheme.headline3.copyWith(color:AppColors.COLOR_WHITE),
                  ),
              ],
            ),
          ),
              ListTile(
                title : Text(
                  Strings.ABOUT_GLOBE,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(color:AppColors.COLOR_BLACK),),
                onTap: (){},
              ),
              ListTile(
                title : Text(
                  Strings.PAYMENT,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(color:AppColors.COLOR_BLACK),),
                onTap: (){},
              )
        ],
      ));
  }
}