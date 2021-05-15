import 'package:flutter/material.dart';
import 'package:insta_clone/screens/camera_screen.dart';
import 'package:insta_clone/screens/inbox_screen.dart';
import 'package:insta_clone/widgets/homepage_app_bar.dart';
import 'package:insta_clone/widgets/post_widget.dart';
import 'package:insta_clone/widgets/story_section.dart';

class Homepage extends StatelessWidget {
  static PageController controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomepageAppBar(controller: controller),
      body: PageView(
        children: [
          CameraScreen(),
          SingleChildScrollView(
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
          InboxScreen(),
        ],
        controller: controller,
      ),
    );
  }
}
