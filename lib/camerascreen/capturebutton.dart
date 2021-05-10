// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:insta_clone/camerascreen/displayvideo.dart';
// import 'package:path/path.dart' show join;
// import 'package:path_provider/path_provider.dart';
// import 'displayimage.dart';

// class Capturebutton {
//   CameraController controller;
//   Color color = Colors.white;
//   String vpath;
//   int i = 0;
//   Capturebutton(this.controller);
//   Widget takepicture(BuildContext context) {
//     return RawMaterialButton(
//       splashColor: Colors.transparent,

//       //getting temporary directory and storing the picture there.

//       onPressed: () async {
//         if (i == 0) {
//           await controller.initialize();
//           final path = join(
//               (await getTemporaryDirectory()).path, '${DateTime.now()}.png');
//           await controller.takePicture(path);

//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DisplayImageScreen(imagePath: path),
//             ),
//           );
//         } else {
//           await controller.stopVideoRecording();
//           color = Colors.white;
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => VideoScreen(videoPath: vpath),
//             ),
//           );
//         }
//       },

//       onLongPress: () async {
//         await controller.initialize();
//         final path =
//             join((await getTemporaryDirectory()).path, '${DateTime.now()}.png');
//         print(path);
//         vpath = path;
//         await controller.startVideoRecording(path);
//         color = Colors.red;
//         i = 1;
//       },

//       child: Stack(
//         alignment: AlignmentDirectional.center,
//         children: <Widget>[
//           Icon(
//             MaterialCommunityIcons.circle_outline,
//             size: 80,
//             color: Colors.white,
//           ),
//           Icon(
//             MaterialCommunityIcons.circle,
//             size: 60,
//             color: color,
//           )
//         ],
//       ),
//     );
//   }
// }
