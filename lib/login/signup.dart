import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta_clone/login/sigin.dart';
import 'package:insta_clone/mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String email;
  String password;
  final _auth = FirebaseAuth.instance;
  static String username;
  final _firestore= Firestore.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: RawMaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignInScreen(),
              ),
            );
          },
          child: RichText(
            text: TextSpan(
                text: 'Already a user ',
                style: TextStyle(color: Colors.black, letterSpacing: .5),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Log in',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue))
                ]),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 70),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
              TextField(
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Email',
                  icon: Icon(
                    MaterialCommunityIcons.email,
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
                  username = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'UserName',
                  icon: Icon(
                    MaterialCommunityIcons.account,
                    color: Colors.black,
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
                    MaterialCommunityIcons.key,
                    color: Colors.black54,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RawMaterialButton(
                highlightElevation: 0,
                highlightColor: Colors.transparent,
                onPressed: () async {
                  try{final user = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                      _firestore.collection('userdate').add({username: username, email:email});
                  if(user!= null){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainSreen(),
                    ),
                  );
                  }
                  }
                  catch(e){
                    print(e); 
                  }
                },
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
                      "Sign Up",
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
      ),
    ));
  }
}
