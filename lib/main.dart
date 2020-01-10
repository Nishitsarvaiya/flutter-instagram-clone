import 'package:flutter/material.dart';
import 'package:social_media_flutter/screens/layout.dart';
import 'package:social_media_flutter/utils/theme_data.dart' as Theme;

void main() => runApp(SocialMedia());

class SocialMedia extends StatefulWidget {
  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter-Firebase Gaming Social Media App',
      theme: Theme.customThemeData,
      home: Layout(),
    );
  }
}
