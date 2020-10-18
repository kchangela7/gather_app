import 'package:flutter/material.dart';
import 'package:gather/shared/constants.dart';

class SignIn extends StatefulWidget {
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
          hintText: "Password",
          hintStyle: style,
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(16.0),
            ),
          ),
          filled: true,
          fillColor: Color(0xFF434950)),
      // decoration: InputDecoration(
      //     contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      //     hintText: "yourname@school.edu",
      //     hintStyle: style,
      //     border:
      //         OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
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

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: primary,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Start Matching",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xff1D232A),
      body: Center(
        child: Container(
          child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //SizedBox(height: 0.0),
                    SizedBox(
                      height: 55.0,
                      child: Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 100.0),
                    SizedBox(height: 45.0),
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
                ),
              )),
        ),
      ),
    );
  }
}
