import 'package:flutter/material.dart';
import 'package:social_media_flutter/utils/size_config.dart';

class Button extends StatefulWidget {
  final String title;
  final onPressed;
  final Color textColor;
  final Color backgroundColor;

  const Button({Key key, this.title, this.onPressed, this.backgroundColor, this.textColor}) : super(key: key);
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.backgroundColor,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        splashFactory: InkRipple.splashFactory,
        borderRadius: BorderRadius.circular(5),
        onTap: () {},
        child: Container(
          width: SizeConfig.safeBlockHorizontal * 90,
          height: 40,
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: widget.textColor,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
