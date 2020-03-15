import 'package:flutter/material.dart';

import '../const.dart';
class Features{
  Widget features(){
      return Container(
                  width: 180,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Text(
                          "LIVE ",
                          style: ktextstyle,
                        ),
                        Text(
                          " CREATE ",
                          style: ktextstyle,
                        ),
                        Text(
                          " NORMAL ",
                          style: ktextstyle,
                        ),
                        Text(
                          " BOOMERANG ",
                          style: ktextstyle,
                        ),
                        Text(
                          " LAYOUT ",
                          style: ktextstyle,
                        ),
                        Text(
                          " SUPERZOOM ",
                          style: ktextstyle,
                        ),
                        Text(
                          " HANDS-FREE ",
                          style: ktextstyle,
                        )
                      ],
                    ),
                  ),
                );
  }
}