import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Text("Sign In"),
          SizedBox(height: 15),
          TextField(),
          SizedBox(height: 15),
          TextField(),
        ]
      )
    );
  }
}