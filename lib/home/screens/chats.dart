import 'package:flutter/material.dart';
import 'package:gather/shared/chatObject.dart';
import 'package:gather/shared/constants.dart';

// Generate fake data for displaying
ChatObject ex1 = new ChatObject(name: "Elise", info: "You matched with Elise on 10/17/2020.", asset: "assets/images/person1.png", read: true);
ChatObject ex2 = new ChatObject(name: "Bobby", info: "You: OMG 455 is going to kick my butt. Let's study...", asset: "assets/images/person2.png");
ChatObject ex3 = new ChatObject(name: "Max", info: "I love lofi beats too! I listen to it while I do 210 work...", asset: "assets/images/person3.png");
ChatObject ex4 = new ChatObject(name: "Elise & Max", info: "Elise: So study session at 3PM?", asset: "assets/images/group.png");
ChatObject ex5 = new ChatObject(name: "Elise", info: "You matched with Elise on 10/17/2020.", asset: "assets/images/person1.png", read: true);
ChatObject ex6 = new ChatObject(name: "Elise", info: "You matched with Elise on 10/17/2020.", asset: "assets/images/person1.png", read: true);
ChatObject ex7 = new ChatObject(name: "Elise", info: "You matched with Elise on 10/17/2020.", asset: "assets/images/person1.png", read: true);
List<ChatObject> data = [ex1, ex2, ex3, ex4, ex5, ex6, ex7];

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background2,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/logo.png", scale: 2),
        backgroundColor: background,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: background, thickness: 1),
        itemCount: data.length,
        itemBuilder: (context, index) {
          bool checkPic = data[index].asset == "assets/images/group.png";
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  if (checkPic) SizedBox(width: 6),
                  Image.asset(
                    data[index].asset, 
                    scale: checkPic ? 1 : 3
                  ),
                  SizedBox(width: checkPic ? 12: 6),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data[index].name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18, letterSpacing: 0.25)),
                        Text(data[index].info, style: TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 0.15))
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      )
    );
  }
}