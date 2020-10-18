import 'package:flutter/material.dart';
import 'package:gather/authentication/signIn.dart';
import 'package:gather/authentication/signUp.dart';

class Auth extends StatefulWidget {
  final VoidCallback toggleAuth;

  Auth({this.toggleAuth});

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool showSignIn = true;
  void toggleSignIn() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    return showSignIn ? 
      SignIn(toggleAuth: widget.toggleAuth, toggleSignIn: toggleSignIn) : 
      SignUp(toggleAuth: widget.toggleAuth, toggleSignIn: toggleSignIn);
  }
}