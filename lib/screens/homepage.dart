import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supercharged/supercharged.dart';

class Homepage extends StatelessWidget {
  final PageController controller;

  const Homepage({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomepageAppBar(controller: controller),
    );
  }
}

class HomepageAppBar extends StatelessWidget {
  const HomepageAppBar({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/plus.svg',
            height: 24,
          ),
          onPressed: () {
            controller.animateToPage(0,
                duration: 300.milliseconds, curve: Curves.easeInExpo);
          }),
      title: Text(
        "Instagram",
        style: TextStyle(fontFamily: 'Billa', fontSize: 30),
      ),
      actions: [
        IconButton(
            icon: SvgPicture.asset(
              'assets/icons/dm.svg',
              height: 24,
            ),
            onPressed: () {
              controller.animateToPage(2,
                  duration: 300.milliseconds, curve: Curves.easeInExpo);
            }),
      ],
    );
  }
}
