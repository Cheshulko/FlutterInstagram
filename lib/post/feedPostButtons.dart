import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedPostButtons extends StatefulWidget {
  @override
  _FeedPostButtonsState createState() => _FeedPostButtonsState();
}

class _FeedPostButtonsState extends State<FeedPostButtons> {
  bool isLiked = false;

  void changeLikeIt() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new IconButton(
                padding: const EdgeInsets.all(8.0),
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border, 
                  color: isLiked ? Colors.red : Colors.black,
                  size: 28),
                onPressed: changeLikeIt,
              ),
              new IconButton(
                padding: const EdgeInsets.all(8.0),
                icon: Icon(FontAwesomeIcons.comment, color: Colors.black),
                onPressed: null,
              ),
              new IconButton(
                padding: const EdgeInsets.all(8.0),
                icon: Icon(FontAwesomeIcons.paperPlane, color: Colors.black),
                onPressed: null,
              ),
            ],
          ),
          new Icon(FontAwesomeIcons.bookmark)
        ],
      ),
    );
  }
}

// class FeedPostButtons extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           new Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               new Icon(
//                 FontAwesomeIcons.heart,
//               ),
//               new SizedBox(
//                 width: 16.0,
//               ),
//               new Icon(
//                 FontAwesomeIcons.comment,
//               ),
//               new SizedBox(
//                 width: 16.0,
//               ),
//               new Icon(FontAwesomeIcons.paperPlane),
//             ],
//           ),
//           new Icon(FontAwesomeIcons.bookmark)
//         ],
//       ),
//     );
//   }
// }
