import 'package:flutter/material.dart';
import 'package:globe/common/subscribe_amount.dart';
import 'package:globe/resources/images.dart';
import 'package:globe/themes/colors.dart';
import 'package:globe/themes/themes.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/widgets/subscriptions.dart';

class MovieSuggestions extends StatelessWidget {
  final List<Map<String,dynamic>> list = [
    {
      'bgcolor':AppColors.COLOR_GRAPE_PURPLE,
      'image': Images.HOOQ,
      'subscribe': Strings.SUBSCRIBE_FOR,
      'amount': Strings.SUBSCRIBE_AMOUNT,
    },
     {
      'bgcolor':AppColors.COLOR_BROWN,
      'image': Images.IFLIX,
      'subscribe': Strings.SUBSCRIBE_FOR,
      'amount': Strings.SUBSCRIBE_AMOUNT,
    },
     {
      'bgcolor':AppColors.COLOR_SKY_BLUE,
      'image': Images.DISNEYLIFE,
      'subscribe': Strings.SUBSCRIBE_FOR,
      'amount': Strings.SUBSCRIBE_AMOUNT,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,int index){
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
               width: 140,
               height: double.infinity,
               decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               color: list[index]['bgcolor'],
             ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex:3,
                    child: Image(
                      image: AssetImage(list[index]['image']),
                      fit: BoxFit.none,
                    ),
                  ),
                  Expanded(
                    flex:2,
                    child:SubscribeAmount(
                      subscribe: list[index]['subscribe'],
                      amount: list[index]['amount'],
                      ),
                  )
                ],
              )
            ),
          );
        }
      )
    );
  }
}