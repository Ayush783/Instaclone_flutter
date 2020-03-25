import 'package:flutter/material.dart';
import 'package:insta_clone/login/sigin.dart';
import 'package:insta_clone/login/signup.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Instagram",
            style: TextStyle(fontFamily: 'Billa', fontSize: 60),
          ),
          SizedBox(
            height: 20,
          ),
          Hero(
            tag: 'image',
                      child: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.network(
                'https://www.voanews.com/themes/custom/voa/images/Author__Placeholder.png',
                height: 150,
                width: 150,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RawMaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ),
              );
            },
            fillColor: Colors.blue,
            splashColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 0,
            child: Container(
              height: 50,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              ),
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ),
              );
            },
            splashColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 0,
            child: Container(
              height: 50,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.blue,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

