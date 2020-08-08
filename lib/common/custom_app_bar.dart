import 'package:flutter/material.dart';

import 'package:globe/resources/images.dart';
import 'package:globe/resources/strings.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {
           Scaffold.of(context).openDrawer();
        },
        child: Image(
          image: AssetImage(Images.MENU),
        ),
      ),
      actions: <Widget>[
        GestureDetector(
          child: Image(
            image: AssetImage(Images.BELL),
          ),
          onTap: () {},
        ),
        GestureDetector(
            child: Image(
            image: AssetImage(Images.PROFILE),
          ),
          onTap: () {},
        ),
      ],
      bottom: PreferredSize(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  GestureDetector(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          Strings.PREPAID,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                Strings.NUMBER,
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              IconButton(
                                icon: Icon(Icons.expand_more),
                                onPressed: () {}
                              ),
                          ],
                        )),
                      ],
                    ),
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image(
                      image: AssetImage(Images.PLUS),
                    ),
                  ),
              ]),
        ),
        preferredSize: Size.fromHeight(0),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(160);
}
