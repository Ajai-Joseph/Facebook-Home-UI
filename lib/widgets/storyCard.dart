
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

import 'circularButton.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    iconColor: Colors.blue,
                    buttonIcon: Icons.add,
                    buttonAction: () {
                      print("Create new story");
                    },
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
