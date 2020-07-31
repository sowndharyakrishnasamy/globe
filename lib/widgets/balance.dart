import 'package:flutter/material.dart';
import 'package:globe/themes/colors.dart';
import 'package:globe/resources/images.dart';
import 'package:globe/resources/strings.dart';

class Balance extends StatefulWidget {
  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  final List<Map<String, dynamic>> balance = [
    {
      'image': Images.LOAD,
      'title': Strings.LOAD_TITLE,
      'value': Strings.LOAD_AMOUNT,
      'desc': Strings.DATA_VALID,
      'active': true,
    },
    {
      'image': Images.DATA,
      'title': Strings.DATA_TITLE,
      'value': Strings.DATA_BALANCE,
      'desc': Strings.DATA_AMOUNT,
      'active': false,
    },
    {
      'image': Images.LOAD,
      'title': Strings.LOAD_TITLE,
      'value': Strings.LOAD_AMOUNT,
      'desc': Strings.DATA_VALID,
      'active': false,
    },
  ];
  final List<Map<String, dynamic>> recommended = [
    {
      'subtitle': Strings.RECOMMEDNED_TITLE1,
      'sub_desc': Strings.RECOMMEDNED_DESC1,
      'new': true,
    },
    {
      'subtitle': Strings.RECOMMEDNED_TITLE2,
      'sub_desc': Strings.RECOMMEDNED_DESC2,
      'new': false,
    },
    {
      'subtitle': Strings.RECOMMEDNED_TITLE1,
      'sub_desc': Strings.RECOMMEDNED_DESC1,
      'new': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 0, 30),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
      color: AppColors.COLOR_LIGHT_BLUE,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: balance.length,
              itemBuilder: (BuildContext context, int index) {
                if (balance[index]['active'] == true) {
                  return GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   balance[index]['active'] == true
                      //       ? balance[index]['active'] = false
                      //       : balance[index]['active'] = true;
                      // });
                    },
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          width: 160,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.COLOR_WARM_BLUE,
                                  AppColors.COLOR_LIGHT_ROYAL_BLUE
                                ],
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(color: AppColors.COLOR_WHITE),
                                  ),
                                  Text(
                                    balance[index]['value'],
                                    style: TextStyle(
                                      color: AppColors.COLOR_WHITE,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                balance[index]['desc'],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(color: AppColors.COLOR_WHITE),
                              )
                            ],
                          ),
                        )),
                  );
                } else {
                  return Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   balance[index]['active'] == true
                        //       ? balance[index]['active'] = false
                        //       : balance[index]['active'] = true;
                        // });
                      },
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: 140,
                            height: 150,
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(
                                              color:
                                                  AppColors.COLOR_LIGHT_BLACK),
                                    ),
                                    Text(
                                      balance[index]['value'],
                                      style: TextStyle(
                                        color: AppColors.COLOR_LIGHT_BLACK,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  balance[index]['desc'],
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                          color: AppColors.COLOR_PALE_BLACK),
                                )
                              ],
                            ),
                          )),
                    ),
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 25, 20, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Strings.RECOMMEDNED,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: AppColors.COLOR_SHADE_GREY),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    Strings.VIEW_ALL,
                    style: TextStyle(
                      color: AppColors.COLOR_LIGHTISH_BLUE,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 65,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommended.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                        height: 65,
                        width: 160,
                        decoration: BoxDecoration(
                          color: AppColors.COLOR_LIGHTISH_BLUE,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: <Widget>[
                            recommended[index]['new']
                                ? Align(
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
                                  )
                                : Container(width: 0, height: 0),
                            Positioned(
                              top: 18,
                              left: 15,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
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
                            ),
                          ],
                        )));
              },
            ),
          )
        ],
      ),
    );
  }
}
