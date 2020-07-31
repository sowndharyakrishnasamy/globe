import 'package:flutter/material.dart';
import 'package:globe/themes/themes.dart';
import 'package:globe/common/custom_app_bar.dart';
import 'package:globe/common/bottom_nav_bar.dart';
import 'package:globe/widgets/balance.dart';
import 'package:globe/widgets/brand.dart';
import 'package:globe/widgets/globe_rewards.dart';
import 'package:globe/widgets/latest_promos.dart';
import 'package:globe/widgets/special_promos.dart';
import 'package:globe/resources/data.dart';
import 'package:globe/widgets/subscriptions.dart';
import 'package:globe/common/button.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Globe',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme:Themes.lightTheme,
    );
  }
}

class HomePage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        children: <Widget>[
          Balance(),
          SpecialPromos(data : specialpromodata),
          LatestPromos(),
          SpecialPromos(data: roamingplansdata),
          GlobeRewards(),
          Brand(),
          Button(),
          Subscriptions(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}