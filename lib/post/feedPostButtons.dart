import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedPostButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Icon(
                FontAwesomeIcons.heart,
              ),
              new SizedBox(
                width: 16.0,
              ),
              new Icon(
                FontAwesomeIcons.comment,
              ),
              new SizedBox(
                width: 16.0,
              ),
              new Icon(FontAwesomeIcons.paperPlane),
            ],
          ),
          new Icon(FontAwesomeIcons.bookmark)
        ],
      ),
    );
  }
}
