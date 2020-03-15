import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Physics{
  int index;
  Physics(this.index);
  ScrollPhysics physics(){
    ScrollPhysics phy;
    if (index==0) {
      phy=AlwaysScrollableScrollPhysics();
    }
    else{
      phy=NeverScrollableScrollPhysics();
    }
    return phy;
  }
}

const TextStyle ktextstyle= TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 13.5,letterSpacing: 1.5);