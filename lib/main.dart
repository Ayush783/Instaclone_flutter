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
      titleSpacing: .2,
      leading: RawMaterialButton(
        splashColor: Colors.white,
        onPressed: () {
          print("camera pressed");
        },
        child: Icon(
          MaterialCommunityIcons.camera_outline,
          size: 30,
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
            constraints: BoxConstraints(maxHeight: 30, minWidth: 30),
            splashColor: Colors.white,
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
                child: storybar(),
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
                accImg: "https://www.californiamuseum.org/sites/main/files/imagecache/lightbox/main-images/robertdowneyjr_cahalloffameinductee.png",
              )
            ],
          ),
        ),
      ),
    );
  }
}

//class storybar :

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
        RawMaterialButton(
          constraints: BoxConstraints(minHeight: 30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {
            print("story button pressed");
          },
          child: CircleAvatar(
            backgroundColor: Color(0xffdc3171),
            radius: 30,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(url),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

//post class

class Post extends StatefulWidget {
  final String img;
  final int likenum;
  final String caption;
  final String accName;
  final int commentNum;
  final String accImg;
  Post(
      {Key key,
      this.img,
      this.accName,
      this.caption,
      this.commentNum,
      this.accImg,
      this.likenum});
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    int likenum = widget.likenum;
    int commentNum = widget.commentNum;
    Color color = Colors.white;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 55,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black12),
            ),
          ),
          child: ListTile(
            leading: RawMaterialButton(
              splashColor: Colors.white,
              constraints: BoxConstraints(minHeight: 30),
              onPressed: () {
                print("pressed");
              },
              child: CircleAvatar(
                backgroundColor: Color(0xffdc3171),
                radius: 20,
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(widget.accImg),
                ),
              ),
            ),
            contentPadding: EdgeInsets.fromLTRB(8, 0, 10, 0),
            title: Text(
              widget.accName,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            ),
            trailing: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ),
        Image.network(widget.img),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 3),
            ),
            RawMaterialButton(
                constraints: BoxConstraints(minHeight: 30, minWidth: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  setState(() {
                    color = Colors.red;
                  });
                  print("like button got pressed");
                },
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Icon(
                      MaterialCommunityIcons.heart,
                      color: Colors.black,
                      size: 30,
                    ),
                    Icon(
                      MaterialCommunityIcons.heart,
                      color: color,
                      size: 27,
                    )
                  ],
                )),
            RawMaterialButton(
                constraints: BoxConstraints(minHeight: 20, minWidth: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  print("comment button got pressed");
                },
                child: Image.asset('images/cmnt.png', height: 28)),
            RawMaterialButton(
                constraints: BoxConstraints(minHeight: 20, minWidth: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  print("dm got pressed");
                },
                child: Image.asset('images/dm.png', height: 24)),
            Padding(
              padding: EdgeInsets.only(right: 155),
            ),
            RawMaterialButton(
                constraints: BoxConstraints(minHeight: 20, minWidth: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  print("save got pressed");
                },
                child: Image.asset('images/save.png', height: 24)),
            Padding(
              padding: EdgeInsets.only(right: 10),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "$likenum Likes",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text.rich(
                TextSpan(
                  text: widget.accName + " ",
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.caption,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                "View all $commentNum comments",
                style: TextStyle(color: Colors.grey),
              ),
              Padding(padding: EdgeInsets.only(bottom:10),)
            ],
          ),
        ),
      ],
    );
  }
}
