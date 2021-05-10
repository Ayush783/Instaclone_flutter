import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/camerascreen/features.dart';
import 'package:insta_clone/camerascreen/gallerybutton.dart';

List<CameraDescription> cameras;

class Camerascreen extends StatefulWidget {
  @override
  _CamerascreenState createState() => _CamerascreenState();
}

class _CamerascreenState extends State<Camerascreen> {
  CameraController controller;
  //initialising controller.
  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.high);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int i = 0;
  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CameraPreview(controller),

          // capture button
          Positioned(
            bottom: 70,
            left: 140,
            child: Container(),
          ),

          Positioned(
            bottom: 20,
            child: Row(
              children: <Widget>[
                //button for accessing the gallery
                GalleryButton(),

                //various features listed at the bottom of the camera screen
                Features().features(),

                //button to switvh camera, front to back or vice verse
                RawMaterialButton(
                  onPressed: () {
                    if (i == 0) {
                      setState(() {
                        i = 1;
                        controller =
                            CameraController(cameras[1], ResolutionPreset.high);
                        controller.initialize().then((_) {
                          if (!mounted) {
                            return;
                          }
                          setState(() {});
                        });
                      });
                    } else {
                      setState(() {
                        i = 0;
                        controller =
                            CameraController(cameras[0], ResolutionPreset.high);
                        controller.initialize().then((_) {
                          if (!mounted) {
                            return;
                          }
                          setState(() {});
                        });
                      });
                    }
                  },
                  child: Icon(
                    Icons.camera,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            child: RawMaterialButton(
              onPressed: () {},
              child: Icon(
                Icons.flag,
                color: Colors.white,
                size: 35,
              ),
            ),
          )
        ],
      ),
    );
  }
}
