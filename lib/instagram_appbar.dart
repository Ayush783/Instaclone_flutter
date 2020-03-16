import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta_clone/camera_screen.dart';
import 'package:insta_clone/dmscreen/dm_page.dart';

class Instaappbar {
  Widget appbar1(BuildContext context) {
    return AppBar(
      titleSpacing: .2,
      leading: RawMaterialButton(
        splashColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Camerascreen(),
            ),
          );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dmscreen()),
              );
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
}
