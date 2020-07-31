import 'package:flutter/material.dart';
import 'package:globe/resources/images.dart';
import 'package:globe/resources/strings.dart';
import 'package:globe/themes/colors.dart';
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.0,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          title: Text(
            Strings.BOTTOMNAV1,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: AppColors.COLOR_BLACK,),
          ),
          icon: Image(
            image:AssetImage(Images.MOBILE)
          )
        ),
        BottomNavigationBarItem(
          title: Text(
            Strings.BOTTOMNAV2,
            style: Theme.of(context).textTheme.subtitle1.copyWith(color: AppColors.COLOR_BLACK),
          ),
          icon: Image(
            image:AssetImage(Images.LIFESTYLE)
          )
        ),
        BottomNavigationBarItem(
          title: Text(
            Strings.BOTTOMNAV3,
            style: Theme.of(context).textTheme.subtitle1.copyWith(color: AppColors.COLOR_BLACK),
          ),
          icon: Image(
            image:AssetImage(Images.WALLET)
          )
        ),
        BottomNavigationBarItem(
          title: Text(
            Strings.BOTTOMNAV4,
            style: Theme.of(context).textTheme.subtitle1.copyWith(color: AppColors.COLOR_BLACK),
          ),
          icon: Image(
            image:AssetImage(Images.MORE)
          )
        ),
      ],
      onTap: (int index){
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
  
}
