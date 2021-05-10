import 'package:flutter/material.dart';
import 'camera_screen.dart';
import 'homepage.dart';
import 'inbox_screen.dart';

List<Widget> dashBoardScreens = [
  CameraScreen(),
  Homepage(),
  InboxScreen(),
];

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: dashBoardScreens,
    );
  }
}
