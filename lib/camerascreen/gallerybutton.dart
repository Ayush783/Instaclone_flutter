import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insta_clone/camerascreen/displayimage.dart';

class GalleryButton extends StatefulWidget {
  @override
  _GalleryButtonState createState() => _GalleryButtonState();
}

class _GalleryButtonState extends State<GalleryButton> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () async{
        await getImage();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DisplayImageScreen(
              image: _image,
            ),
          ),
        );
      },
      child: Icon(
        MaterialCommunityIcons.image_album,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
