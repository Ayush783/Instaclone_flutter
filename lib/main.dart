import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //appbar
  Widget _appbar() {
    return AppBar(
      leading: RawMaterialButton(
        onPressed: () {
          print("camera pressed");
        },
        child: Icon(
          MaterialCommunityIcons.camera_outline,
          size: 28,
        ),
      ),
      title: Text(
        "Instagram",
        style: TextStyle(fontFamily: 'Billa', fontSize: 30),
      ),
      elevation: 1.2,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 0),
          child: RawMaterialButton(
            constraints: BoxConstraints(maxHeight: 30,minWidth: 30),
            padding: EdgeInsets.all(0),
            onPressed: () {
              print("chat icon pressed");
            },
            child: Image.asset(
              'images/dm.png',
              width: 25,
              height: 28,
            ),
          ),
        ),
      ],
    );
  }

// storybar
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
                        MaterialCommunityIcons.plus_circle,
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: _appbar(),
          body: ListView(
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
                child: storybar(),
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black12),
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xffdc3171),
                    radius: 20,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage('images/dsc.png'),
                    ),
                  ),
                  title: Text(
                    "Dsc Kiet",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Image.asset('images/dscp.png'),
                  ListTile(
                    leading: Icon(
                      MaterialCommunityIcons.heart_outline,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Container(
//                     height: 300,
//                     decoration: BoxDecoration(
//                       border: Border(
//                         bottom: BorderSide(color: Colors.black12),
//                       ),
//                     ),
//                   ),

class Storybar {
  String text;
  String url;
  Storybar(this.text, this.url);
  Widget story() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 6),
        ),
        CircleAvatar(
          backgroundColor: Color(0xffdc3171),
          radius: 30,
          child: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(url),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
