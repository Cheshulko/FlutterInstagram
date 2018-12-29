import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/profile/instagramProfileBio.dart';
import 'package:flutter_insta_clone/profile/instagramProfileHeader.dart';

class InstagramProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        // Flexible(child: new InstagramList())
        new InstagramProfileHeader(),
        new InstagramProfileBio(),
      ],
    );
  }
}