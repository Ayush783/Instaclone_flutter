import 'package:flutter/material.dart';

//dm screen appbar

class Dmappbar {
  Widget appbar() {
    return AppBar(
      titleSpacing: .2,
      leading: RawMaterialButton(
        splashColor: Colors.white,
        onPressed: () {
          print("camera pressed");
        },
        child: Icon(
          Icons.flag,
          size: 30,
        ),
      ),
      title: Text(
        "Direct",
      ),
      elevation: 1.2,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 0),
          child: RawMaterialButton(
              constraints: BoxConstraints(maxHeight: 30, minWidth: 30),
              splashColor: Colors.white,
              onPressed: () {
                print("back icon pressed");
              },
              child: Icon(
                Icons.flag,
                size: 30,
                color: Colors.black87,
              )),
        ),
        RawMaterialButton(
          constraints: BoxConstraints(maxHeight: 30, minWidth: 30),
          splashColor: Colors.white,
          onPressed: () {
            print("back icon pressed");
          },
          child: Icon(
            Icons.flag,
            size: 30,
          ),
        ),
      ],
    );
  }
}
