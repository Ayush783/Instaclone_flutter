import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supercharged/supercharged.dart';

import 'dashboard.dart';
import 'dashboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(2.seconds).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Dashboard(),
        ),
      );
    });
  }

  final linearGradient = LinearGradient(
    colors: <Color>[
      Color(0xfff77737),
      Color(0xffe1306c),
      Color(0xff833ab4),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: SvgPicture.asset(
              'assets/icons/logo.svg',
              height: 84,
            ),
          ),
          Spacer(),
          Text(
            "from",
            style: TextStyle(
              color: Color(0xff707070),
              fontFamily: 'monty',
              fontSize: 18,
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return linearGradient.createShader(bounds);
            },
            child: Text(
              "FACEBOOK",
              style: TextStyle(
                fontFamily: 'monty',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 48),
          ),
        ],
      ),
    );
  }
}
