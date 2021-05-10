import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String text;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.network(
                'https://www.voanews.com/themes/custom/voa/images/Author__Placeholder.png',
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                email = value;
              },
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Email',
                icon: Icon(
                  Icons.email,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {
                password = value;
              },
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Password',
                icon: Icon(
                  Icons.flag,
                  color: Colors.black54,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            RawMaterialButton(
              highlightElevation: 0,
              highlightColor: Colors.transparent,
              onPressed: () {},
              splashColor: Colors.transparent,
              fillColor: Colors.blue,
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
            )
          ],
        ),
      ),
    ));
  }
}
