import 'package:flutter/material.dart';

class FeedPostBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: new Image.network(
        "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        fit: BoxFit.cover,
      ),
    );
  }
}
