import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta_clone/searchscreens/searchbar_bottom_buttons.dart';

class Apbar2{
    Widget appbar2() {
  return AppBar(
    titleSpacing: -10,
    leading: Icon(Icons.search,size: 30,),
    title: RawMaterialButton(
      splashColor: Colors.transparent,
      onPressed: () {},
      child: Container(
        width: 250,
        padding: EdgeInsets.all(0),
        child: Text(
          "Search",
          style: TextStyle(
            fontSize: 22,
            color: Colors.grey[400],
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 14.0),
        child: Icon(MaterialCommunityIcons.qrcode_scan),
      )
    ],
    bottom: PreferredSize(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Searchbarbutton('IGTV').searchbutton(),
                Searchbarbutton('Shop').searchbutton(),
                Searchbarbutton('Gaming').searchbutton(),
                Searchbarbutton('Auto').searchbutton(),
                Searchbarbutton('Travel').searchbutton(),
                Searchbarbutton('TV & Movies').searchbutton(),
                Searchbarbutton('Science & Tech').searchbutton(),
                Searchbarbutton('Nature').searchbutton(),
                Searchbarbutton('Style').searchbutton(),
                Searchbarbutton('Animals').searchbutton(),
                Searchbarbutton('Comics').searchbutton(),
                Searchbarbutton('Music').searchbutton(),
                Searchbarbutton('Sports').searchbutton(),
                Searchbarbutton('Dance').searchbutton(),
              ],
            ),
          ),
        ),
      ),
      preferredSize: Size.fromHeight(40),
    ),
  );
}
}





