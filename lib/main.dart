import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/camera_screen.dart';
import 'package:insta_clone/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
        child: Scaffold(
          body: SplashScreen(),
        ),
      ),
    );
  }
}
