import 'package:flutter/material.dart';

class Accountbar {
  Widget appbar5() {
    return AppBar(
      titleSpacing: .2,
      title: RawMaterialButton(
        splashColor: Colors.white,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            width: 110,
            child: Row(
              children: <Widget>[
                Text(
                  "_dscKiet ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 17,
                )
              ],
            ),
          ),
        ),
      ),
      actions: <Widget>[
        RawMaterialButton(
          constraints: BoxConstraints(maxWidth: 30),
          onPressed: () {},
          child: Icon(Icons.flag),
        )
      ],
    );
  }
}
