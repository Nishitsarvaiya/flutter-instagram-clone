import 'package:flutter/material.dart';
import 'package:social_media_flutter/utils/color_palette.dart';
import 'package:social_media_flutter/utils/custom_icons_icons.dart';
import 'package:social_media_flutter/utils/size_config.dart';

class BottomNavbar extends StatefulWidget {
  final int currentTab;
  final ValueChanged<int> onTabChanged;

  const BottomNavbar({Key key, this.currentTab, this.onTabChanged}) : super(key: key);
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            offset: Offset(0, -6),
            blurRadius: 24,
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        currentIndex: widget.currentTab,
        selectedItemColor: ColorPalette.lightBlack,
        unselectedItemColor: ColorPalette.lightBlack.withAlpha(100),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: widget.onTabChanged,
        backgroundColor: ColorPalette.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.home),
            title: Container(height: SizeConfig.safeBlockVertical * 1.8),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.search),
            title: Container(height: SizeConfig.safeBlockVertical * 1.8),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.plus_1),
            title: Container(height: SizeConfig.safeBlockVertical * 1.8),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.bell_1),
            title: Container(height: SizeConfig.safeBlockVertical * 1.8),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.user_outline),
            title: Container(height: SizeConfig.safeBlockVertical * 1.8),
          ),
        ],
      ),
    );
  }
}
