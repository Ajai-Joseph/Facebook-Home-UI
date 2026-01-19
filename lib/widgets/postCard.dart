import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook/sections/lcsButtonSection.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;
  final String postImage;

  PostCard({
    required this.avatar,
    required this.name,
    required this.time,
    required this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          imageSection(),
          footerSection(),
          LcsButtonSection(),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 5,
          ),
          BlueTick(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            time == null ? "" : time,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("More");
        },
        icon: Icon(
          Icons.more_horiz,
        ),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      child: Image.asset(postImage),
    );
  }

  Widget footerSection() {
    return Container(margin: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                ),
                Text(
                  "10K",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(

              children: [
                Text(
                  "1k ",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Text(
                  "Comments",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(width: 5,),
                Text(
                  "100 ",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Text(
                  "Shares",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(width: 10,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
