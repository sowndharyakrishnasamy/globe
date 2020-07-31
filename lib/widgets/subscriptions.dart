import 'package:flutter/material.dart';
import 'package:globe/common/gradient_heading.dart';
import 'package:globe/common/movie_suggestions.dart';
import 'package:globe/common/movies_card.dart';
import 'package:globe/themes/colors.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/resources/images.dart';
class Subscriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 40, 0, 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:AppColors.COLOR_BLACK,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Strings.SUBSCRIPTIONS,
            style: Theme.of(context).textTheme.subtitle2.copyWith(color: AppColors.COLOR_WHITE.withOpacity(0.35)),
          ),
          SizedBox(height: 20,),
          GradientHeading(
            text: Strings.SUBSCRIPTIONS_HEADING1,
            color: [
              AppColors.COLOR_PALE_VIOLET,
              AppColors.COLOR_VIOLET,
              ]
          ),
          GradientHeading(
            text: Strings.SUBSCRIPTIONS_HEADING2,
            color:  [
              AppColors.COLOR_PALE_VIOLET,
              AppColors.COLOR_VIOLET,
              ]
          ),
          SizedBox(height: 25,),
          MoviesCard(
            title: Strings.NETFLIX,
            titleimage: Images.NETFLIX,
            movies:[
              Images.STANGERTHINGS,
              Images.REASONS_WHY,
              Images.MONEY_HEIST
            ]
          ),
          MoviesCard(
            title: Strings.PRIME_VIDEO,
            titleimage: Images.PRIME,
            movies: [
              Images.TERMINATOR,
              Images.DOWNADARKHALL,
              Images.WITCHHUNTER
            ]
          ),
          Text(
            Strings.YOU_MIGHT_ALSO,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height:12,),
          MovieSuggestions(), 
        ],
      )
    );
  }
}