//post class for homepage to build custom posts

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
            title: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>))
              },
              child: Text(
                widget.accName,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
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
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              )
            ],
          ),
        ),
      ],
    );
  }
}
