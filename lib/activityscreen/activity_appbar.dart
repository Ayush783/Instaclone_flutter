import 'package:flutter/material.dart';

class Activitybar{
  Widget appbar4() {
  return AppBar(
    elevation: 2,
    titleSpacing: .2,
    title: Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: Text("Activity",style: TextStyle(fontWeight: FontWeight.w600),),
    ),
  );
}
}