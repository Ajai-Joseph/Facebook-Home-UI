import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class RoomSection extends StatelessWidget {
  Widget createRoomButton()
  {
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
      child: OutlinedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
        ),
        onPressed: () {
          print("chat room");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: sherlock,displayStatus: true,),
          Avatar(displayImage: nolan,displayStatus: true,),
          Avatar(displayImage: lee,displayStatus: true,),
          Avatar(displayImage: scott,displayStatus: true,),
          Avatar(displayImage: arnold,displayStatus: true,),
          Avatar(displayImage: tony,displayStatus: true,),
          Avatar(displayImage: watson,displayStatus: true,),
          Avatar(displayImage: robert,displayStatus: true,),

        ],
      ),
    );
  }
}
