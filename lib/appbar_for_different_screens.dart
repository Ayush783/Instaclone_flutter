import 'package:flutter/material.dart';
import 'package:insta_clone/searchscreens/search_appbar.dart';
import 'package:insta_clone/uploadscreen/uploadscreen_appbar.dart';
import 'accountscreen/accounts_appbar.dart';
import 'activityscreen/activity_appbar.dart';
import 'instagram_appbar.dart';

class Apbar {
  int index;
  Apbar(this.index);
  Widget appbar() {
    Widget bar;
    if (index == 0) {
      bar = Instaappbar().appbar1();         //if else statements to change the appbar as per the displayed page in bottom nav bar
    } else if (index == 1) {
      bar = Apbar2().appbar2();
    } else if (index == 2) {
      bar = Upscreenappbar().appbar3();
    } else if (index == 3) {
      bar = Activitybar().appbar4();
    } else if (index == 4) {
      bar = Accountbar().appbar5();
    }
    return bar;
  }
}