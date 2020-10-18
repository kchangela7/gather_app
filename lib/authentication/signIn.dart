import 'package:flutter/material.dart';
import 'package:gather/shared/constants.dart';

class SignIn extends StatefulWidget {
  final VoidCallback toggleAuth;

  SignIn({this.toggleAuth});
  
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextStyle style = TextStyle(color: Colors.grey, fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,

      decoration: new InputDecoration(
          hintText: "School Email",
          hintStyle: style,
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(16.0),
            ),
          ),
          filled: true,
          fillColor: Color(0xFF434950)),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: new InputDecoration(
          hintText: "Password",
          hintStyle: style,
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(16.0),
            ),
          ),
          filled: true,
          fillColor: Color(0xFF434950)),
    );

    final loginButton = RaisedButton(
      color: primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: widget.toggleAuth,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Text( 
          "Start Matching",
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: Colors.white, fontWeight: FontWeight.bold)
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xff1D232A),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.fromLTRB(36, 120, 36, 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //SizedBox(height: 0.0),
                  SizedBox(
                    height: 75.0,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text("Gather", style: TextStyle(color: primary, fontSize: 56, fontWeight: FontWeight.w700)),
                  SizedBox(height: 100.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),
                  loginButton,
                  SizedBox(
                    height: 15.0,
                    width: 300.0,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
