import 'package:flutter/material.dart';
import 'package:insta_clone/dmscreen/dm%20appbar.dart';
import 'dm widget.dart';

class Dmscreen extends StatefulWidget {
  @override
  _DmscreenState createState() => _DmscreenState();
}

class _DmscreenState extends State<Dmscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //bottom nav bar in dm screen::

      bottomNavigationBar: RawMaterialButton(
        elevation: 30,
        onPressed: () {},
        child: Container(
          height: 48,
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey[300]))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.photo_camera,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                "  Camera",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
        ),
      ),
      appBar: Dmappbar().appbar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: <Widget>[
 
         //search text field::

          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black12),
                      left: BorderSide(color: Colors.black12),
                      right: BorderSide(color: Colors.black12),
                      top: BorderSide(color: Colors.black12)),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.grey,
                    ),
                    labelText: "Search",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 10),
            child: Text(
              "Messages",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),

         //sample dm content::

          Dms("Google",
                  "https://media-exp1.licdn.com/dms/image/C4D0BAQHiNSL4Or29cg/company-logo_200_200/0?e=2159024400&v=beta&t=0e00tehBFFtuqgUCfAijpOkoBl89jxOTIe_k9HHpi_4")
              .dms(),
          Dms("Robert_downey_jr",
                  "https://www.californiamuseum.org/sites/main/files/imagecache/lightbox/main-images/robertdowneyjr_cahalloffameinductee.png")
              .dms(),
          Dms("asdzxc",
                  "https://www.nicepng.com/png/full/138-1388174_login-account-icon.png")
              .dms(),
          Dms("asdzxc",
                  "https://www.nicepng.com/png/full/138-1388174_login-account-icon.png")
              .dms(),
          Dms("asdzxc",
                  "https://www.nicepng.com/png/full/138-1388174_login-account-icon.png")
              .dms(),
          Dms("asdzxc",
                  "https://www.nicepng.com/png/full/138-1388174_login-account-icon.png")
              .dms(),
          Dms("asdzxc",
                  "https://www.nicepng.com/png/full/138-1388174_login-account-icon.png")
              .dms(),
          Dms("asdzxc",
                  "https://www.nicepng.com/png/full/138-1388174_login-account-icon.png")
              .dms(),
          Dms("asdzxc",
                  "https://www.nicepng.com/png/full/138-1388174_login-account-icon.png")
              .dms(),
        ],
      ),
    );
  }
}

