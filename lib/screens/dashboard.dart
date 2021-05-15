import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/screens/activity_screen.dart';
import 'package:insta_clone/screens/add_post_screen.dart';
import 'package:insta_clone/screens/profile_screen.dart';
import 'package:insta_clone/screens/search_screen.dart';
import 'homepage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

List<Widget> screens = [
  Homepage(),
  SearchScreen(),
  AddPostScreen(),
  ActivityScreen(),
  ProfileScreen(),
];

class _DashboardState extends State<Dashboard> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        elevation: 0,
        iconSize: 24,
        onTap: (value) {
          _index = value;
          setState(() {});
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                height: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                height: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/plus.svg',
                height: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/heart_outlined.svg',
                height: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/me.jpg',
                    ),
                  ),
                ),
              ),
              label: ''),
        ],
      ),
    );
  }
}
