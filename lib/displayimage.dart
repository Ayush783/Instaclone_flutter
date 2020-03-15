import 'dart:io';

import 'package:flutter/material.dart';

class DisplayImageScreen extends StatelessWidget {
  final String imagePath;
  const DisplayImageScreen({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.file(
        File(imagePath),
      ),
    );
  }
}
