import 'package:flutter/material.dart';
import 'package:insta_clone/camera_screen.dart';
import 'package:insta_clone/dmscreen/dm_page.dart';
import 'package:insta_clone/homepage.dart';

class MainSreen extends StatefulWidget {
  @override
  _MainSreenState createState() => _MainSreenState();
}

class _MainSreenState extends State<MainSreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async=>false,
          child: PageView(controller: PageController(initialPage: 1),   //pageview to navigate between camera screen homepage and dm screen.
          children: <Widget>[
            Camerascreen(),
            HomePage(),
            Dmscreen(),
          ],
          ),
    );
  }
}