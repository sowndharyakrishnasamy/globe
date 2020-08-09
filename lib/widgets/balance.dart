import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:globe/common/recommended.dart';

import 'package:globe/themes/colors.dart';
import 'package:globe/resources/images.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/common/data_card.dart';

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
      'recommended': [
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
        }
      ]
    },
    {
      'image': Images.DATA,
      'title': Strings.DATA_TITLE,
      'value': Strings.DATA_BALANCE,
      'desc': Strings.DATA_AMOUNT,
      'recommended': [
        {
          'subtitle': Strings.RECOMMEDNED_TITLE1,
          'sub_desc': Strings.RECOMMEDNED_DESC1,
          'new': false,
        },
        {
          'subtitle': Strings.RECOMMEDNED_TITLE2,
          'sub_desc': Strings.RECOMMEDNED_DESC2,
          'new': true,
        },
        {
          'subtitle': Strings.RECOMMEDNED_TITLE1,
          'sub_desc': Strings.RECOMMEDNED_DESC1,
          'new': false,
        }
      ]
    },
    {
      'image': Images.LOAD,
      'title': Strings.LOAD_TITLE,
      'value': Strings.LOAD_AMOUNT,
      'desc': Strings.DATA_VALID,
      'recommended': [
        {
          'subtitle': Strings.RECOMMEDNED_TITLE1,
          'sub_desc': Strings.RECOMMEDNED_DESC1,
          'new': false,
        },
        {
          'subtitle': Strings.RECOMMEDNED_TITLE2,
          'sub_desc': Strings.RECOMMEDNED_DESC2,
          'new': false,
        },
        {
          'subtitle': Strings.RECOMMEDNED_TITLE1,
          'sub_desc': Strings.RECOMMEDNED_DESC1,
          'new': true,
        }
      ]
    },
  ];
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 0, 30),
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
                  return Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _activeIndex = index;
                        });
                      },
                      child: DataCard(
                          index: index,
                          balance: balance,
                          activeIndex: _activeIndex),
                    ),
                  );
                }),
          ),
          RecommendedHeading(),
          Recommended(
              activeIndex: _activeIndex,
              recommended: balance[_activeIndex]['recommended'])
        ],
      ),
    );
  }
}

class RecommendedHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
