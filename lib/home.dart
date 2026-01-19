import 'dart:ffi';

import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/sections/roomSection.dart';

import 'assets.dart';

class Home extends StatelessWidget {
  Widget divider(double val) {
    return Divider(
      thickness: val,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search");
                }),
            CircularButton(
                buttonIcon: Icons.message,
                buttonAction: () {
                  print("Message");
                }),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            divider(1),
            HeaderButtonSection(),
            SizedBox(
              height: 5,
            ),
            divider(10),
            RoomSection(),
            divider(10),
            StorySection(),
            divider(10),
            PostCard(
              avatar: nolan,
              name: "Christopher Nolan",
              time: "5h",
              postImage: nolan_movies,
            ),
            divider(10),
            PostCard(
              avatar: robert,
              name: "Robert Downey Jr.",
              time: "1h",
              postImage: c,
            ),
            divider(10),
            PostCard(
              avatar: scott,
              name: "Scott Adkins",
              time: "20h",
              postImage: d,
            ),
            divider(10),
            PostCard(
              avatar: arnold,
              name: "Arnold Schwarzenegger",
              time: "2h",
              postImage: f,
            ),
          ],
        ),
      ),
    );
  }
}
