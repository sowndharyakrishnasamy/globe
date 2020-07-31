import 'package:flutter/material.dart';
import 'package:globe/themes/colors.dart';
class Themes{

  static final ThemeData lightTheme = _lightTheme();
  static ThemeData _lightTheme(){
    return ThemeData(
      fontFamily: 'AvenirNext',
      primaryColor: AppColors.COLOR_BLUE,
      accentColor: AppColors.COLOR_WHITE,
      appBarTheme:AppBarTheme(
        color:AppColors.COLOR_WHITE,
      ) ,
      bottomAppBarTheme: BottomAppBarTheme(
        color:AppColors.COLOR_WHITE
      ),
      textTheme: TextTheme(
        subtitle1: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: AppColors.COLOR_GREY,  
        ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: AppColors.COLOR_PALE_GREY,
        ),
        headline2: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color:AppColors.COLOR_WHITE,
        ),
        headline3: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color:AppColors.COLOR_BLACK,
        ),
        headline4: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          color: AppColors.COLOR_WHITE,
        ),
        headline6: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color:AppColors.COLOR_WHITE,
        ),
        headline5: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color:AppColors.COLOR_WHITE,
        ),
        bodyText1: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 9,
          color:AppColors.COLOR_WHITE,
        ),
        bodyText2: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 8,
          color: AppColors.COLOR_WHITE,
        )
      ).apply(
        fontFamily: 'AvenirNext',
      ),
    );
  }
}