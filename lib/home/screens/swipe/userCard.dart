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
                  width: 339,
                  height: 125,
                  color: Color.fromRGBO(129, 129, 129, 0.72),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jane, 2022",
                          style: TextStyle(color: Colors.white, letterSpacing: 0.3, fontSize: 20, fontWeight: FontWeight.w600)
                        ),
                        SizedBox(height: 4),
                        Container(
                          width: 310,
                          child: Text(
                            "COMP 210 | COMP 455 | COMP 380 | MEJO 187",
                            style: TextStyle(color: Colors.white, fontSize: 17, letterSpacing: 0.2)
                          )
                        ),
                        Text(
                          "2 mutual matches",
                          style: TextStyle(color: Colors.white)
                        )
                      ],
                    ),
                  )
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