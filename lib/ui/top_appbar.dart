import 'package:flutter/material.dart';
import 'package:social_media_flutter/utils/color_palette.dart';
import 'package:social_media_flutter/utils/custom_icons_icons.dart';
import 'package:social_media_flutter/utils/theme_data.dart' as Theme;

class TopAppBar extends StatefulWidget {
  final String username;
  final bool showBackButton;

  const TopAppBar({Key key, this.username, this.showBackButton}) : super(key: key);

  @override
  _TopAppBarState createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  List<CustomActionMenuItem> actionChoices = [
    CustomActionMenuItem(title: 'Saved', icon: CustomIcons.bookmark_empty),
    CustomActionMenuItem(title: 'Settings', icon: Icons.settings),
  ];

  @override
  Widget build(BuildContext context) {
    if (widget.showBackButton) {
      return AppBar(
        backgroundColor: ColorPalette.lightBlack,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(CustomIcons.left_open),
        ),
        centerTitle: true,
        title: Text(widget.username, style: Theme.TextStyles.body),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_horiz, size: 30),
            enabled: true,
            elevation: 32,
            itemBuilder: (BuildContext context) {
              return actionChoices.map((CustomActionMenuItem choice) {
                return PopupMenuItem<CustomActionMenuItem>(
                  value: choice,
                  child: ListTile(
                    leading: Icon(choice.icon, size: 24, color: ColorPalette.orange),
                    title: Text(choice.title, style: TextStyle(color: ColorPalette.white)),
                  ),
                );
              }).toList();
            },
          ),
        ],
        actionsIconTheme: IconThemeData(color: ColorPalette.orange),
      );
    } else {
      return AppBar(
        backgroundColor: ColorPalette.lightBlack,
        title: Text(widget.username, style: Theme.TextStyles.body),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_horiz, size: 30),
            padding: EdgeInsets.symmetric(horizontal: 16),
            enabled: true,
            elevation: 32,
            color: ColorPalette.lightBlack,
            offset: Offset(20, 20),
            itemBuilder: (BuildContext context) {
              return actionChoices.map((CustomActionMenuItem choice) {
                return PopupMenuItem<CustomActionMenuItem>(
                  value: choice,
                  child: ListTile(
                    leading: Icon(choice.icon, size: 24, color: ColorPalette.white),
                    title: Text(choice.title, style: TextStyle(color: ColorPalette.white)),
                  ),
                );
              }).toList();
            },
          ),
        ],
        actionsIconTheme: IconThemeData(color: ColorPalette.white, size: 30),
      );
    }
  }
}

class CustomActionMenuItem {
  String title;
  IconData icon;

  CustomActionMenuItem({this.title, this.icon});
}
