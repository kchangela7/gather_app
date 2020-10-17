import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gather/home/screens/chats.dart';
import 'package:gather/home/screens/swipe/swipe.dart';
import 'package:gather/shared/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [Swipe(), Chat(), Swipe()];

  @override
  Widget build(BuildContext context) {
    final bottomNavBar = BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 8,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon: Image.asset("assets/images/swipe_filled.png"),
          icon: Image.asset("assets/images/swipe1.png"),
          title: Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(FontAwesomeIcons.solidComment, size: 25),
          icon: Icon(FontAwesomeIcons.comment, size: 25, color: Colors.grey[600],),
          title: Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(FontAwesomeIcons.solidUser, size: 25),
          icon: Icon(FontAwesomeIcons.user),
          title: Container(height: 0.0),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: primary,
      onTap: _onItemTapped,
    );

    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: bottomNavBar, body: pages[_selectedIndex]
    );
  }
}