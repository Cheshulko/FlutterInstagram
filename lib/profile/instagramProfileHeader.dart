import 'package:flutter/material.dart';

class InstagramProfileHeader extends StatelessWidget {
  Column buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      new Container(
          width: 70.0,
          height: 70.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                    "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
          ),
          margin: const EdgeInsets.all(15.0)),
      Expanded(
          child: new Column(children: <Widget>[
        new Row(
          children: <Widget>[
            Expanded(
                child: buildButtonColumn(Icons.exposure_zero, "helloWzzs")),
            Expanded(
                child: buildButtonColumn(Icons.exposure_zero, "helloWzzs")),
            Expanded(
                child: buildButtonColumn(Icons.exposure_zero, "helloWzzs")),
          ],
        ),
        new FlatButton(
            onPressed: null,
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border.all(color: Colors.black),
                  borderRadius: new BorderRadius.circular(5.0)),
              alignment: Alignment.center,
              child: new Text("Button",
                  style: new TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              width: 250.0,
              height: 27.0,
            )),
      ])),
    ]);
  }
}
