import 'package:flutter/material.dart';
import 'package:social_media_flutter/utils/color_palette.dart';

final ThemeData customThemeData = new ThemeData(
  primaryColor: ColorPalette.lightBlack,
  accentColor: ColorPalette.blue,
  backgroundColor: ColorPalette.lightBlack,
  fontFamily: 'Proxima Nova',
  textTheme: TextTheme(
    body2: TextStyle(fontSize: 12, color: ColorPalette.white.withAlpha(200), letterSpacing: 0.8),
    title: TextStyle(fontSize: 18, color: ColorPalette.white, letterSpacing: 0.5),
    subtitle: TextStyle(fontSize: 16, color: ColorPalette.white, letterSpacing: 0.5),
  ),
);

class TextStyles {
  TextStyles._();

  static final TextStyle body = TextStyle(fontSize: 14, color: ColorPalette.white, letterSpacing: 0.8);

  static final TextStyle profileNameStyle = TextStyle(
    fontFamily: 'BebasNeue',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorPalette.white,
    letterSpacing: 1.2,
  );

  static final TextStyle profileBioStyle = TextStyle(
    fontSize: 14,
    color: ColorPalette.grey,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle numberStyle = TextStyle(
    fontFamily: 'BebasNeue',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorPalette.white,
    letterSpacing: 0.8,
  );

  static final TextStyle numberLabelStyle = TextStyle(
    fontSize: 12,
    color: ColorPalette.grey,
    letterSpacing: 0.8,
  );
}

class Shadows {
  Shadows._();

  static final BoxShadow shadow40 = BoxShadow(
    color: Colors.black.withOpacity(0.40),
    offset: Offset(0, 6),
    blurRadius: 12,
  );

  static final BoxShadow buttonShadow = BoxShadow(
    color: Colors.black.withOpacity(0.35),
    offset: Offset(0, 6),
    blurRadius: 18,
  );
}
