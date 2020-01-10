import 'package:flutter/material.dart';
import 'package:social_media_flutter/ui/button.dart';
import 'package:social_media_flutter/ui/post_tabs.dart';
import 'package:social_media_flutter/ui/stat_numbers.dart';
import 'package:social_media_flutter/ui/top_appbar.dart';
import 'package:social_media_flutter/utils/color_palette.dart';
import 'package:social_media_flutter/utils/size_config.dart';
import 'package:social_media_flutter/utils/theme_data.dart' as Theme;

class ProfileScreen extends StatefulWidget {
  static final String id = 'profile-screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.black,
      appBar: PreferredSize(
        child: TopAppBar(username: '@martingarrix', showBackButton: false),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(2),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 3),
                    blurRadius: 10,
                  ),
                ],
                border: Border.fromBorderSide(
                  BorderSide(
                    color: ColorPalette.orange,
                    width: 1,
                  ),
                ),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_image.jpg'),
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.safeBlockVertical * 2),
                Text(
                  'Martin Garrix',
                  style: Theme.TextStyles.profileNameStyle,
                ),
                Container(
                  width: SizeConfig.safeBlockHorizontal * 70,
                  child: Divider(
                    color: ColorPalette.blue.withOpacity(0.4),
                  ),
                ),
                Text(
                  'Team Captain @FazeClan',
                  style: Theme.TextStyles.profileBioStyle,
                ),
              ],
            ),
            SizedBox(height: 10),
            StatNumbers(posts: 356, followers: 7, followings: 768),
            SizedBox(height: 10),
            Button(
              title: 'Edit Profile',
              textColor: ColorPalette.white,
              backgroundColor: ColorPalette.blue,
              onPressed: () {},
            ),
            SizedBox(height: 40),
            PostTabs(),
          ],
        ),
      ),
    );
  }
}
