import 'package:flutter/material.dart';
import 'package:social_media_flutter/utils/color_palette.dart';
import 'package:social_media_flutter/utils/custom_icons_icons.dart';
import 'package:social_media_flutter/utils/size_config.dart';
import 'package:social_media_flutter/utils/theme_data.dart' as Theme;

class FeedScreen extends StatefulWidget {
  static final String id = 'feed-screen';

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List _feedPosts = ['ethanhunt007', 'hobbsTheRock', 'shawStatham', 'dominicf_f'];
  List _feedPostLocation = ['Amsterdam, Netherlands', 'New York', 'New Zealand', 'Los Angeles'];
  List _feedPostImages = ['assets/images/1.jpg', 'assets/images/2.jpg', 'assets/images/4.jpg', 'assets/images/7.jpg'];
  List _userProfilePictures = [
    'assets/images/3.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/8.jpg'
  ];
  List<CustomPopupMenuItem> _popupMenuChoices = [
    CustomPopupMenuItem(title: 'Report'),
    CustomPopupMenuItem(title: 'Share to...'),
    CustomPopupMenuItem(title: 'Unfollow'),
    CustomPopupMenuItem(title: 'Mute'),
  ];

  @override
  Widget build(BuildContext context) {
    print(_feedPosts.length);
    return Scaffold(
      backgroundColor: ColorPalette.black,
      appBar: AppBar(
        backgroundColor: ColorPalette.darkGray,
        leading: IconButton(
          icon: Icon(CustomIcons.camera_outline, color: ColorPalette.white),
          iconSize: 25,
          onPressed: () {},
        ),
        title: Text('Gamer', style: Theme.TextStyles.profileNameStyle),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(CustomIcons.direction_outline, color: ColorPalette.white),
            iconSize: 25,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _feedPosts.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildPost(index);
        },
      ),
    );
  }

  Widget _buildPost(int index) {
    return Container(
      width: SizeConfig.safeBlockHorizontal * 100,
      // height: 400,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: ColorPalette.darkGray,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.35), offset: Offset(0, 6), blurRadius: 12)],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: SizeConfig.safeBlockHorizontal * 100,
            child: ListTile(
              contentPadding: EdgeInsets.only(
                left: SizeConfig.safeBlockHorizontal * 5,
                right: SizeConfig.safeBlockHorizontal * 1.5,
              ),
              leading: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: ColorPalette.orange,
                      width: 1,
                    ),
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(_userProfilePictures[index]),
                ),
              ),
              title: Text(
                _feedPosts[index],
                style: TextStyle(fontSize: 16, color: ColorPalette.white),
              ),
              subtitle: Text(
                _feedPostLocation[index],
                style: TextStyle(fontSize: 12, color: ColorPalette.grey),
              ),
              trailing: PopupMenuButton(
                icon: Icon(Icons.more_horiz, color: ColorPalette.grey, size: 30),
                color: ColorPalette.white,
                itemBuilder: (BuildContext context) {
                  return _popupMenuChoices.map((CustomPopupMenuItem choice) {
                    return PopupMenuItem<CustomPopupMenuItem>(
                      value: choice,
                      child: Text(choice.title),
                    );
                  }).toList();
                },
              ),
            ),
          ),
          Container(
            width: SizeConfig.safeBlockHorizontal * 90,
            height: SizeConfig.safeBlockHorizontal * 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), offset: Offset(0, 3), blurRadius: 10)],
              image: DecorationImage(
                image: AssetImage(_feedPostImages[index]),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          Container(
            width: SizeConfig.safeBlockHorizontal * 100,
            padding: EdgeInsets.only(
              left: SizeConfig.safeBlockHorizontal * 2.4,
              right: SizeConfig.safeBlockHorizontal * 1.5,
              top: 5,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(CustomIcons.heart, color: ColorPalette.red),
                      iconSize: 28,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(CustomIcons.direction_outline, color: ColorPalette.blue),
                      iconSize: 28,
                      onPressed: () {},
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(CustomIcons.bookmark_empty, color: ColorPalette.white),
                  iconSize: 28,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            width: SizeConfig.safeBlockHorizontal * 90,
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '2,456 likes',
                      style: TextStyle(fontSize: 14, color: ColorPalette.grey),
                    ),
                    Text(
                      '3 hours ago',
                      style: TextStyle(fontSize: 14, color: ColorPalette.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _feedPosts[index],
                      style: TextStyle(fontSize: 16, color: ColorPalette.white),
                    ),
                    Text(
                      'Having fun with CSGO after a long time!\nHope you enjoy. Cheers!\n#gaming #CSGO #fps',
                      style: TextStyle(fontSize: 14, color: ColorPalette.white.withOpacity(0.6)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(CustomIcons.comment_empty, color: ColorPalette.blue),
                          Text(
                            'Add a comment',
                            style: TextStyle(fontSize: 14, color: ColorPalette.white.withOpacity(0.6)),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: Text(
                        'View all 736 comments',
                        style: TextStyle(fontSize: 14, color: ColorPalette.white.withOpacity(0.6)),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPopupMenuItem {
  String title;

  CustomPopupMenuItem({this.title});
}
