import 'package:flutter/material.dart';
import 'package:insta_clone/homepage.dart';
import 'dmscreen/dm_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollPhysics phy;
  @override
  // void setState(fn) {
  //   phy=Physics(HomePage().index()).physics();
  //   super.setState(fn);
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
      ),
      home: SafeArea(
        child: PageView(controller: PageController(initialPage: 1),   //pageview to navigate between camera screen homepage and dm screen.
        physics:phy,
        children: <Widget>[
          Text("sfdv"),
          HomePage(),
          Dmscreen(),
        ],
        ),
      ),
    );
  }
}

