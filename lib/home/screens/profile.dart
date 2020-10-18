import 'package:flutter/material.dart';
import 'package:gather/shared/constants.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const header = TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 0.5);
    const input = TextStyle(color: Color(0xFFE5E5E5), fontSize: 18, letterSpacing: 0.15);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/logo.png", scale: 2),
        backgroundColor: background,
        elevation: 0,
      ),
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
          child: Form(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Profile Photo", style: header),
                  ],
                ),
                SizedBox(height: 6),
                Container(
                  child: Image.asset(
                    "assets/images/profile-pic.png",
                    fit: BoxFit.contain
                  )
                ),
                SizedBox(height: 4),
                RaisedButton(
                  onPressed: () {},
                  color: primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Container(
                    width: 150,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Upload", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                      ],
                    )
                  )
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Classes", style: header),
                  ],
                ),
                SizedBox(height: 6),
                TextFormField(
                  initialValue: "COMP 210 | COMP 455 | COMP 380 | MEJO 187",
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: input,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(16.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFF434950)
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Year", style: header),
                  ],
                ),
                SizedBox(height: 6),
                TextFormField(
                  initialValue: "2022",
                  style: input,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(16.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFF434950)
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Major(s)", style: header),
                  ],
                ),
                SizedBox(height: 6),
                TextFormField(
                  initialValue: "Computer Science | Information Science",
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: input,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(16.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFF434950)
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Bio", style: header),
                  ],
                ),
                SizedBox(height: 6),
                TextFormField(
                  initialValue: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: input,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(16.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFF434950)
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Interests", style: header),
                  ],
                ),
                SizedBox(height: 6),
                TextFormField(
                  initialValue: "Reading, singing, swimming, soccer, Netflix!",
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: input,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(16.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFF434950)
                  ),
                ),
                SizedBox(height: 16),
                RaisedButton(
                  onPressed: () {},
                  color: primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Container(
                    width: 100,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Save", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                      ],
                    )
                  )
                ),
                SizedBox(height: 12)
              ],
            ),
          ),
        )
      ),
    );
  }
}