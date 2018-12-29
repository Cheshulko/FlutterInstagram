import 'package:flutter/material.dart';

class InstagramProfileBio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(10.0),
          child: new Text("John Doe",
              style: new TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        new Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 40.0, 5.0),
          child: new Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ...",
              style: new TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
