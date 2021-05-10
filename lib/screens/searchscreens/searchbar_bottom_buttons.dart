import 'package:flutter/material.dart';

//the button displayed in a row below the appbar in search screen are made by this custom widget

class Searchbarbutton {
  String name;
  Searchbarbutton(this.name);
  Widget searchbutton() {
    return Padding(
      padding: const EdgeInsets.only(right:5.0),
      child: RawMaterialButton(
        constraints: BoxConstraints(minWidth: 55),
        onPressed: () {},
        child: Container(
          height: 28,
          decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey[400]),
                bottom: BorderSide(color: Colors.grey[400]),
                left: BorderSide(color: Colors.grey[400]),
                right: BorderSide(color: Colors.grey[400]),
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}