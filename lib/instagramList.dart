import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/instagramStories.dart';
import 'package:flutter_insta_clone/post/feedPostBody.dart';
import 'package:flutter_insta_clone/post/feedPostButtons.dart';
import 'package:flutter_insta_clone/post/feedPostHeader.dart';

class InstagramList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        if (index == 0) {
          return new SizedBox(
            child: new InstagramStories(),
            height: deviceSize.height * 0.2,
          );
        } else {
          return new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new FeedPostHeader(),
              new FeedPostBody(),
              new FeedPostButtons(),
            ]
          );
        }
      },
    );
  }
}
