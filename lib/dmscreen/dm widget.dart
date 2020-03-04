//Dms widget
import 'package:flutter/material.dart';

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
