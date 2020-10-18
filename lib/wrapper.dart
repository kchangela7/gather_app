import 'package:flutter/material.dart';
import 'package:gather/home/home.dart';
import 'authentication/signIn.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  bool loggedIn = false;

  void toggleAuth() {
    setState(() {
      loggedIn = !loggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SignIn();
  }
}
