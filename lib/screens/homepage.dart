import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/homepage_app_bar.dart';

class Homepage extends StatelessWidget {
  final PageController controller;

  const Homepage({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomepageAppBar(controller: controller),
    );
  }
}
