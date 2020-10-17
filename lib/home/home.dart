import "package:flutter/material.dart";
import 'package:flutter/services.dart';
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

  List<Widget> pages = [Swipe(), Swipe(), Swipe()];

  @override
  Widget build(BuildContext context) {
    final bottomNavBar = BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 8,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/logo.png", scale: 2),
          title: Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline, size: 30),
          title: Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle, size: 35),
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