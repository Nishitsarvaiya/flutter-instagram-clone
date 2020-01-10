import 'package:flutter/material.dart';
import 'package:social_media_flutter/ui/post_grid.dart';
import 'package:social_media_flutter/utils/color_palette.dart';
import 'package:social_media_flutter/utils/size_config.dart';

class PostTabs extends StatefulWidget {
  @override
  _PostTabsState createState() => _PostTabsState();
}

class _PostTabsState extends State<PostTabs> with TickerProviderStateMixin {
  TabController _tabController;
  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2, initialIndex: _tabIndex);
  }

  void _onTabChanged(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 5.5),
          child: TabBar(
            controller: _tabController,
            onTap: _onTabChanged,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.fromLTRB(0, 0, 0, kTextTabBarHeight),
              borderSide: BorderSide(color: ColorPalette.blue, width: 2),
            ),
            tabs: <Widget>[
              Tab(text: 'Posts'),
              Tab(text: 'Tagged'),
            ],
          ),
        ),
        PostGrid(tabIndex: _tabIndex),
      ],
    );
  }
}
