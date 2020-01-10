import 'package:flutter/material.dart';
import 'package:social_media_flutter/utils/theme_data.dart' as Theme;

class StatNumbers extends StatefulWidget {
  final int posts;
  final int followers;
  final int followings;

  const StatNumbers({Key key, this.posts, this.followers, this.followings}) : super(key: key);
  @override
  _StatNumbersState createState() => _StatNumbersState();
}

class _StatNumbersState extends State<StatNumbers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${widget.posts}', style: Theme.TextStyles.numberStyle),
                Text('Posts', style: Theme.TextStyles.numberLabelStyle),
              ],
            ),
          ),
          Container(
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${widget.followers}.1M', style: Theme.TextStyles.numberStyle),
                Text('Followers', style: Theme.TextStyles.numberLabelStyle),
              ],
            ),
          ),
          Container(
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${widget.followings}', style: Theme.TextStyles.numberStyle),
                Text('Followings', style: Theme.TextStyles.numberLabelStyle),
              ],
            ),
          )
        ],
      ),
    );
  }
}
