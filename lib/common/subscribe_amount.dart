import 'package:flutter/material.dart';
import 'package:globe/themes/colors.dart';
class SubscribeAmount extends StatelessWidget {
  final String subscribe;
  final String amount;
  const SubscribeAmount({
    @required this.subscribe,
    @required this.amount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      padding: const EdgeInsets.fromLTRB(20,14, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),  
        color: AppColors.COLOR_BLACK.withOpacity(0.4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            subscribe,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(fontWeight: FontWeight.w500),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'P $amount',
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(fontSize: 14),
              ),
              TextSpan(
                text: '/m',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontSize: 10),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
