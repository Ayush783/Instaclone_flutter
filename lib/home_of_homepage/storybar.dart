//class storybar for displaying stories of users on homepage :


import 'package:flutter/material.dart';

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