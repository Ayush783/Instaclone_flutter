import 'package:flutter/cupertino.dart';

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