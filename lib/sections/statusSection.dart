import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: ajai, displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Whats on mind",
          hintStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
