import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomepageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomepageAppBar({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
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

  @override
  Size get preferredSize => Size(double.maxFinite, 50);
}
