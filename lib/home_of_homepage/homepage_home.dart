

import 'package:flutter/material.dart';
import 'package:insta_clone/home_of_homepage/post_class.dart';
import 'package:insta_clone/home_of_homepage/storybar_content.dart';

class Homepagehome{
  Widget home(){
    return  ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.black,
              width: .1,
            )),
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Stories().storybar(),
          ),
          Post(
            accName: "Dsc Kiet",
            img:
                'https://cloud.google.com/images/cloud-startups-program/cloud_for_startups_hero_image_1x.png',
            caption:
                "Hello Guys!! this is official insta handle of Google developer students club",
            likenum: 2658,
            commentNum: 64,
            accImg:
                'https://media-exp1.licdn.com/dms/image/C560BAQHtS3OdZ0Kr8Q/company-logo_200_200/0?e=2159024400&v=beta&t=NFD7U4LerS47Ui4c03fBDH_6BsG9vTQm081EVKBxYc0',
          ),
          Post(
            accName: "Rober Downey Jr.",
            img:
                'https://www.hindustantimes.com/rf/image_size_640x362/HT/p1/2015/04/03/Incoming/Pictures/1333507_Wallpaper2.jpg',
            likenum: 623459,
            commentNum: 989,
            caption: "Good morning guys",
            accImg:
                "https://www.californiamuseum.org/sites/main/files/imagecache/lightbox/main-images/robertdowneyjr_cahalloffameinductee.png",
          )
        ],
      );
  }
}







