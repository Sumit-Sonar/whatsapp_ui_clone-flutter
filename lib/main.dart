import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/components/status.dart';

import 'components/chattile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  //adding the main color of app
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30.0);

  //adding a list of image url to simulate the avatar picture
  List<String> imageUrl = [
    "https://cdn-icons-png.flaticon.com/512/3006/3006899.png",
    "https://cdn-icons-png.flaticon.com/512/3006/3006897.png",
    "https://cdn-icons-png.flaticon.com/512/3006/3006951.png",
    "https://cdn-icons-png.flaticon.com/512/3006/3006821.png",
    "https://cdn-icons-png.flaticon.com/512/8193/8193904.png",
    "https://cdn-icons-png.flaticon.com/512/3006/3006950.png",
    "https://cdn-icons-png.flaticon.com/512/3220/3220315.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0.0,
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_enhance),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(children: [
        //The Status timeline container
        Container(
            height: 110.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //Status Widget(class) using here
                  status(imageUrl[0], "Dad"),
                  status(imageUrl[1], "Sumit"),
                  status(imageUrl[2], "Mom"),
                  status(imageUrl[3], "Chintu"),
                  status(imageUrl[4], "Nimbu"),
                  status(imageUrl[5], "Rakhi"),
                  status(imageUrl[6], "Anjali"),
                  status(imageUrl[0], "Pushkar"),
                  status(imageUrl[1], "Aman"),
                ],
              ),
            )),

        //Our Chat Screen
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: containerRadius, topRight: containerRadius)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: ListView(
              children: [
                chatTile(imageUrl[0], "Dad", "Hey son! How are you?",
                    "yesterday", false),
                chatTile(imageUrl[1], "Sumit", "Fine How Are You?", "yesterday",
                    true),
                chatTile(imageUrl[2], "Mom",
                    "Hey son! You had dinner yesterday nignt?", "today", false),
                chatTile(
                    imageUrl[3], "Chintu Dee", "You got money?", "tue", false),
                chatTile(
                    imageUrl[4], "Nimbu", "Bro coming in game?", "sun", true),
                chatTile(imageUrl[5], "Rakhi Dee", "Where Are You?", "11:00pm",
                    false),
                chatTile(
                    imageUrl[6], "Anjali", "Hey! I am coming", "today", true),
                chatTile(imageUrl[0], "Pushkar", "Come bro in 5 min",
                    "yesterday", true),
                chatTile(
                    imageUrl[1], "Aman", "Ya Bro sending", "12:00am", true),
                chatTile(imageUrl[4], "Sahil",
                    "Bro Check insta reel, i have send you", "sun", false),
                chatTile(
                    imageUrl[1], "Jiju", "Where Are You?", "11:00pm", false),
                chatTile(imageUrl[6], "Anurag Singh", "Photos", "today", true),
                chatTile(
                    imageUrl[0], "Lucky", "I am Coming", "yesterday", true),
              ],
            ),
          ),
        ))
      ]),
    );
  }
}
