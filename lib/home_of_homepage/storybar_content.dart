import 'package:flutter/material.dart';
import 'package:insta_clone/home_of_homepage/storybar.dart';

//sample content of story bar created here

class Stories {
  Widget storybar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 6),
              ),
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Color(0xffdc3171),
                    maxRadius: 30,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('images/dsc.png'),
                    ),
                  ),
                  Positioned(
                      left: 44.6,
                      child: Icon(
                        Icons.flag,
                        color: Colors.blue,
                        size: 17,
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                "Your Story",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(right: 10)),
          Storybar("Google",
                  "https://media-exp1.licdn.com/dms/image/C4D0BAQHiNSL4Or29cg/company-logo_200_200/0?e=2159024400&v=beta&t=0e00tehBFFtuqgUCfAijpOkoBl89jxOTIe_k9HHpi_4")
              .story(),
          Padding(padding: EdgeInsets.only(right: 10)),
          Storybar("Robert Do...",
                  "https://www.californiamuseum.org/sites/main/files/imagecache/lightbox/main-images/robertdowneyjr_cahalloffameinductee.png")
              .story(),
          Padding(padding: EdgeInsets.only(right: 10)),
          Storybar("Amber He...",
                  "https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/08/19/08/amber-heard.jpg?w968h681")
              .story(),
          Padding(padding: EdgeInsets.only(right: 10)),
          Storybar("Abe Saal...",
                  "https://external-preview.redd.it/HGyrhxijbOHDdsZhQNVTZMhda2ljehZcoCP0iIfRxsU.jpg?auto=webp&s=8a6ad2b4b191c8bf5a8ca7f2ec2f453ceb673495")
              .story(),
          Padding(padding: EdgeInsets.only(right: 10)),
          Storybar("Donald T...",
                  "https://thenypost.files.wordpress.com/2020/02/donald-trump-12.jpg?quality=80&strip=all&w=618&h=410&crop=1")
              .story(),
          Padding(padding: EdgeInsets.only(right: 10)),
          Storybar("Kim Jong...",
                  "https://i.insider.com/5d185ef4a17d6c352104a0b2?width=1100&format=jpeg&auto=webp")
              .story(),
          Padding(padding: EdgeInsets.only(right: 10)),
          Storybar("Abd",
                  "https://i.cdn.newsbytesapp.com/images/147_24621550395847.jpg")
              .story(),
        ],
      ),
    );
  }
}
