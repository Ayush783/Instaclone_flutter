import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
import 'displayimage.dart';
class Capturebutton{
  CameraController controller;
  Capturebutton(this.controller);
  Widget takepicture(BuildContext context){
    return RawMaterialButton(
              splashColor: Colors.transparent,
              onPressed: () async {
                await controller.initialize();
                final path = join((await getTemporaryDirectory()).path,
                    '${DateTime.now()}.png');
                    print(path);
                await controller.takePicture(path);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayImageScreen(imagePath: path),
                  ),
                );
              },
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.circle_outline,
                    size: 80,
                    color: Colors.white,
                  ),
                  Icon(
                    MaterialCommunityIcons.circle,
                    size: 60,
                    color: Colors.white,
                  )
                ],
              ),
            );
  }
}


