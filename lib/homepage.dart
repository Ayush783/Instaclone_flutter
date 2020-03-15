import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta_clone/searchscreens/homepage_search.dart';
import 'appbar_for_different_screens.dart';
import 'home_of_homepage/homepage_home.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  static int _selectedIndex = 0;
  // ScrollPhysics physic(){
  //   return Physics(_selectedIndex).physics();
  // }
  // int index(){
  //   return _selectedIndex;
  // }
}

class _HomePageState extends State<HomePage> {

  //bottom nav bar content at various indexes

  List<Widget> _widgetOptions = <Widget>[
    Homepagehome().home(),
    Searchscreen().searchscreen(),
    Text(
      '',
    ),
    Text(
      '',
    ),
    Text(
      '',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      HomePage._selectedIndex = index;
     // HomePage().physic();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom nav bar to navigate between homepage,search screen ,activity screen etc.
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        iconSize: 26,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.plus_box_outline),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.heart_outline),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.account_outline),
              title: Text(""))
        ],
        currentIndex: HomePage._selectedIndex,
        onTap: _onItemTapped,
      ),
      //bottom nav bar end
      appBar: Apbar(HomePage._selectedIndex).appbar(context),
      body: _widgetOptions.elementAt(HomePage._selectedIndex),
    );
  }
}


