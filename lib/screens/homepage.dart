import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/widgets/homepage_app_bar.dart';
import 'package:insta_clone/widgets/post_widget.dart';
import 'package:insta_clone/widgets/story_section.dart';

class Homepage extends StatefulWidget {
  final PageController controller;

  const Homepage({Key key, this.controller}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomepageAppBar(controller: widget.controller),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StorySection(),
            Padding(padding: EdgeInsets.only(top: 4)),
            Divider(
              color: Colors.grey,
            ),
            PostWidget(dp: 'person1', name: 'ElenaTT5', image: 'image1'),
            PostWidget(dp: 'person2', name: 'Caroline88', image: 'image2'),
            PostWidget(dp: 'person3', name: 'NamiKoko', image: 'image3'),
            PostWidget(dp: 'person4', name: 'Roronoazoro', image: 'image4'),
            PostWidget(dp: 'person5', name: 'Sanjichef', image: 'image5'),
            PostWidget(dp: 'person6', name: 'nicorobin', image: 'image6'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        elevation: 0,
        iconSize: 24,
        onTap: (value) {},
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
