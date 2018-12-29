import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/instagramBody.dart';

PageController pageController;

class InstagramHome extends StatefulWidget {
  @override
  _InstagramHomeState createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  int _page = 0;

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
        height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

//  Container buildBottomNavigationBar() {
//     return new Container(
//       color: Colors.white,
//       height: 50.0,
//       alignment: Alignment.center,
//       child: new BottomAppBar(
//         child: new Row(
//           // alignment: MainAxisAlignment.spaceAround,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             new IconButton(
//               icon: Icon(Icons.home),
//               onPressed: navigationTapped,
//             ),
//             new IconButton(
//               icon: Icon(Icons.search),
//               onPressed: null,
//             ),
//             new IconButton(
//               icon: Icon(Icons.add_box),
//               onPressed: null,
//             ),
//             new IconButton(
//               icon: Icon(Icons.favorite),
//               onPressed: null,
//             ),
//             new IconButton(
//               icon: Icon(Icons.account_box),
//               onPressed: null,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: new PageView(
        children: [
          new InstagramBody(),
          new Container(color: Colors.white),
          new Container(color: Colors.white),
          new Container(color: Colors.white),
          new Container(color: Colors.white),
        ],
        controller: pageController,
        physics: new PageScrollPhysics(),
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: new CupertinoTabBar(
        activeColor: Colors.orange,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home,
                  color: (_page == 0) ? Colors.black : Colors.grey),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.search,
                  color: (_page == 1) ? Colors.black : Colors.grey),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add_box,
                  color: (_page == 2) ? Colors.black : Colors.grey),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.favorite,
                  color: (_page == 3) ? Colors.black : Colors.grey),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.person,
                  color: (_page == 4) ? Colors.black : Colors.grey),
              backgroundColor: Colors.white),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}
