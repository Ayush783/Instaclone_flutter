import 'package:flutter/material.dart';

class Upscreenappbar{
  Widget appbar3() {
  return AppBar(
    elevation: 2,
    titleSpacing: .2,
    leading: RawMaterialButton(
      constraints: BoxConstraints(maxWidth: 0),
      onPressed: (){},
      child: Container(
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30)),
        child: Icon(Icons.cancel,color: Colors.white),),
    ),
    title: Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Text("Video",style: TextStyle(fontWeight: FontWeight.w600),),
    ),
  );
}
}