import 'package:flutter/material.dart';

import 'package:globe/themes/colors.dart';

class DataCard extends StatelessWidget {
  final int activeIndex;
  final List balance;
  final int index;

  DataCard({
    @required this.activeIndex,
    @required this.balance,
    @required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          width: activeIndex == index ? 160 : 140,
          height: activeIndex == index ? 180 : 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: activeIndex == index
                  ? LinearGradient(
                      colors: [
                        AppColors.COLOR_WARM_BLUE,
                        AppColors.COLOR_LIGHT_ROYAL_BLUE
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.8],
                    )
                  : LinearGradient(
                      colors: [AppColors.COLOR_WHITE, AppColors.COLOR_WHITE],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.8],
                    )),
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image(
                image: AssetImage(balance[index]['image']),
                fit: BoxFit.contain,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    balance[index]['title'],
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: activeIndex == index
                            ? AppColors.COLOR_WHITE
                            : AppColors.COLOR_LIGHT_BLACK),
                  ),
                  Text(
                    balance[index]['value'],
                    style: TextStyle(
                      color: activeIndex == index
                          ? AppColors.COLOR_WHITE
                          : AppColors.COLOR_LIGHT_BLACK,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Text(
                balance[index]['desc'],
                style: Theme.of(context).textTheme.headline6.copyWith(
                    color: activeIndex == index
                        ? AppColors.COLOR_WHITE
                        : AppColors.COLOR_PALE_BLACK),
              )
            ],
          ),
        ));
  }
}
