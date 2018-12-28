import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/instagramHome.dart';

void main()=> runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              title: TextStyle(color: Colors.black, fontFamily: "Chefont")),
          textTheme: TextTheme(title: TextStyle(color: Colors.black))),
      home: new InstagramHome(),
    );
  }
}