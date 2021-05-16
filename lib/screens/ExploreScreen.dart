import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/post_widget.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        elevation: 0,
      ),
      body: ListView(
        children: [
          PostWidget(dp: 'person1', name: 'ElenaTT5', image: 'image1'),
          PostWidget(dp: 'person2', name: 'Caroline88', image: 'image2'),
          PostWidget(dp: 'person3', name: 'NamiKoko', image: 'image3'),
          PostWidget(dp: 'person4', name: 'Roronoazoro', image: 'image4'),
          PostWidget(dp: 'person5', name: 'Sanjichef', image: 'image5'),
          PostWidget(dp: 'person6', name: 'nicorobin', image: 'image6'),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
