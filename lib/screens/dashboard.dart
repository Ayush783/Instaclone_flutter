import 'package:flutter/material.dart';
import 'camera_screen.dart';
import 'homepage.dart';
import 'inbox_screen.dart';

class Dashboard extends StatelessWidget {
  static PageController _controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        CameraScreen(),
        Homepage(
          controller: _controller,
        ),
        InboxScreen(),
      ],
      controller: _controller,
    );
  }
}
