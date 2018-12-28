import 'package:flutter/material.dart';

class FeedPostHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              new Container(
                height: 40.0,
                width: 40.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                          "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                ),
              ),
              new SizedBox(
                width: 10.0,
              ),
              new Text(
                "imthpk",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          new IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
