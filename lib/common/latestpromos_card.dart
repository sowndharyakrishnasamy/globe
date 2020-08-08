import 'package:flutter/material.dart';

import 'package:globe/common/subscribe_amount.dart';

class LatestPromosCard extends StatelessWidget {
  final String bgimage;
  final String promoimage;
  final String promoname;
  final String promosubname;
  final String subscribe;
  final String amount;
  const LatestPromosCard(
      {@required this.bgimage,
      @required this.promoimage,
      @required this.promoname,
      @required this.promosubname,
      @required this.subscribe,
      @required this.amount});
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          height: 170,
          width: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgimage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image(image: AssetImage(promoimage)),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: '${promoname} ',
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(fontSize: 14),
                          ),
                          TextSpan(
                            text: promosubname,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontSize: 14),
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SubscribeAmount(
                  subscribe: subscribe,
                  amount: amount,
                ),
              ),
            ],
          ),
        ));
  }
}
