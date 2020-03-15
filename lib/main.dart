import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/homepage.dart';
import 'camerascreen/camera_screen.dart';
import 'dmscreen/dm_page.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras= await availableCameras();
  runApp(MyApp());
}

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
        child: PageView(controller: PageController(initialPage: 1),   //pageview to navigate between camera screen homepage and dm screen.
        children: <Widget>[
          Camerascreen(),
          HomePage(),
          Dmscreen(),
        ],
        ),
      ),
    );
  }
}

