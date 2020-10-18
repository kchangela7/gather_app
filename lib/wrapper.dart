import 'package:flutter/material.dart';
import 'package:gather/authentication/auth.dart';
import 'package:gather/home/home.dart';
import 'package:gather/shared/loading.dart';
import 'authentication/signIn.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  bool loggedIn = false;
  bool loading = false;

  void toggleAuth() {
    setState(() {
      loading = true;
      loggedIn = !loggedIn;
    });
    toggleLoading();
  }

  void toggleLoading() {
    Future.delayed(Duration(seconds: 3), 
      () => setState(() {
        loading = false;
      })
    );
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Loading();
    } else if (loggedIn) {
      return Home();
    }
    return Auth(toggleAuth: toggleAuth);
  }
}
