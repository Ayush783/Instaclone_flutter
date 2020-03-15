
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class GalleryButton{
  Widget button(){
    return RawMaterialButton(
                  onPressed: () {},
                  child: Icon(
                    MaterialCommunityIcons.image_album,
                    size: 30,
                    color: Colors.white,
                  ),
                );
  }
}