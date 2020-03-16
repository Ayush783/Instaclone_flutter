import 'dart:io';

import 'package:flutter/material.dart';

class DisplayImageScreen extends StatelessWidget {
  final File image;
  final String imagePath;
  const DisplayImageScreen({Key key, this.imagePath, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: imagePath == null
            ? Image.file(image,fit: BoxFit.contain,)
            : Image.file(
                File(imagePath),
              ),
      ),
    );
  }
}
