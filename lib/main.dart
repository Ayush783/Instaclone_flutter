import 'package:flutter/material.dart';
import 'package:insta_clone/dm_page.dart';
import 'package:insta_clone/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
      ),
      home: SafeArea(
        child: PageView(controller: PageController(initialPage: 1),
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

