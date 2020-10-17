import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            child: Image.asset(
              "assets/images/profile-pic.png",
              fit: BoxFit.fill
            )
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                child: Container(
                  width: 340,
                  height: 120,
                  color: Color.fromRGBO(129, 129, 129, 0.95),
                ),
              ),
              SizedBox(height: 11)
            ],
          ),
        )
      ]
    );
  }
}