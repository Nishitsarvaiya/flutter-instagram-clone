import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/screens/feed_screen.dart';
import 'package:social_media_flutter/screens/profile_screen.dart';
import 'package:social_media_flutter/ui/bottom_navbar.dart';
import 'package:social_media_flutter/utils/color_palette.dart';
import 'package:social_media_flutter/utils/size_config.dart';

class Layout extends StatefulWidget {
  static final String id = 'layout';

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  PageController _pageController;
  int _currentTab = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  void _selectedTab(int index) {
    print('called in OnTabSelected: $index');
    setState(() {
      _currentTab = index;
    });
    _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorPalette.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    _currentTab = index;
                  });
                },
                children: <Widget>[
                  FeedScreen(),
                  Container(child: Center(child: Text('Search'))),
                  Container(child: Center(child: Text('Upload'))),
                  Container(child: Center(child: Text('Notifications'))),
                  ProfileScreen(),
                ],
              ),
            ),
            BottomNavbar(
              onTabChanged: _selectedTab,
              currentTab: _currentTab,
            )
          ],
        ),
      ),
    );
  }
}
