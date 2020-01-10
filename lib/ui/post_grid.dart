import 'package:flutter/material.dart';
import 'package:social_media_flutter/utils/color_palette.dart';

class PostGrid extends StatefulWidget {
  final int tabIndex;

  const PostGrid({Key key, this.tabIndex}) : super(key: key);
  @override
  _PostGridState createState() => _PostGridState();
}

class _PostGridState extends State<PostGrid> {
  List<Widget> _posts = [];
  List<Widget> _tagged = [];

  @override
  void initState() {
    super.initState();

    for (int i = 1; i <= 9; i++) {
      if (i <= 6) {
        _posts.add(_buildPostTile(i));
      } else {
        _tagged.add(_buildPostTile(i));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorPalette.lightBlack,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 1,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        physics: NeverScrollableScrollPhysics(),
        children: widget.tabIndex == 0 ? _posts : _tagged,
      ),
    );
  }

  _buildPostTile(index) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5), offset: Offset(0, 3), blurRadius: 8)],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Image(
          image: AssetImage('assets/images/$index.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
