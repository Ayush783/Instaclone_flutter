import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Dmscreen extends StatefulWidget {
  @override
  _DmscreenState createState() => _DmscreenState();
}

class _DmscreenState extends State<Dmscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: <Widget>[
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

Widget _appbar() {
  return AppBar(
    titleSpacing: .2,
    leading: RawMaterialButton(
      splashColor: Colors.white,
      onPressed: () {
        print("camera pressed");
      },
      child: Icon(
        MaterialCommunityIcons.arrow_left,
        size: 30,
      ),
    ),
    title: Text(
      "Direct",
    ),
    elevation: 1.2,
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 0),
        child: RawMaterialButton(
            constraints: BoxConstraints(maxHeight: 30, minWidth: 30),
            splashColor: Colors.white,
            onPressed: () {
              print("back icon pressed");
            },
            child: Icon(
              MaterialCommunityIcons.video_outline,
              size: 30,
              color: Colors.black87,
            )),
      ),
      RawMaterialButton(
        constraints: BoxConstraints(maxHeight: 30, minWidth: 30),
        splashColor: Colors.white,
        onPressed: () {
          print("back icon pressed");
        },
        child: Icon(
          MaterialCommunityIcons.chat_outline,
          size: 30,
        ),
      ),
    ],
  );
}

//Dms widget
class Dms {
  String accName;
  String url;

  Dms(this.accName, this.url);

  Widget dms() {
    return RawMaterialButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.grey[400],
      onPressed: () {},
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: CircleAvatar(
          radius: 26,
          backgroundImage: NetworkImage(url),
        ),
        title: Text(accName),
        subtitle: Text.rich(
          TextSpan(
              text: "recent message....",
              style: TextStyle(
                color: Colors.grey,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: "time", style: TextStyle(fontWeight: FontWeight.w600))
              ]),
        ),
        trailing: RawMaterialButton(
          constraints: BoxConstraints(maxWidth: 8),
          onPressed: () {},
          child: Icon(
            Icons.photo_camera,
            size: 29,
          ),
        ),
      ),
    );
  }
}
