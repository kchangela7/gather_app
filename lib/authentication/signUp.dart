import 'package:flutter/material.dart';
import 'package:gather/shared/constants.dart';

class SignUp extends StatefulWidget {
  final VoidCallback toggleAuth;
  final VoidCallback toggleSignIn;

  SignUp({this.toggleAuth, this.toggleSignIn});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextStyle style = TextStyle(color: Colors.grey, fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: new InputDecoration(
          hintText: "Name",
          hintStyle: style,
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(16.0),
            ),
          ),
          filled: true,
          fillColor: Color(0xFF434950)),
    );
    final emailField = TextField(
      obscureText: false,
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
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: new InputDecoration(
          hintText: "Re-Password",
          hintStyle: style,
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(16.0),
            ),
          ),
          filled: true,
          fillColor: Color(0xFF434950)),
    );
    final schoolField = TextField(
      obscureText: true,
      style: style,
      decoration: new InputDecoration(
          hintText: "School (i.e. UNC Chapel Hill)",
          hintStyle: style,
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(16.0),
            ),
          ),
          filled: true,
          fillColor: Color(0xFF434950)),
    );
    final yearField = TextField(
      obscureText: true,
      style: style,
      decoration: new InputDecoration(
          hintText: "Year (i.e. 2022)",
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
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: widget.toggleAuth,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Text("Start Matching",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1D232A),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 75.0,
                        child: Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text("Sign Up",
                          style: TextStyle(
                              color: Color(0xFFE5E5E5),
                              fontSize: 56,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  SizedBox(height: 60.0),
                  nameField,
                  SizedBox(height: 25.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(
                    height: 25.0,
                  ),
                  schoolField,
                  SizedBox(height: 25.0),
                  yearField,
                  SizedBox(height: 35.0),
                  loginButton,
                  SizedBox(height: 10.0),
                  FlatButton(
                      onPressed: widget.toggleSignIn,
                      child: Text("Already have an account? Sign in!",
                          style: style))
                ],
              )),
        ),
      ),
    );
  }
}
