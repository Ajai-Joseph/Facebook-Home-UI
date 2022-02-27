import 'package:flutter/material.dart';
class LcsButtonSection extends StatelessWidget {

  Widget lcsButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }
    @override
  Widget build(BuildContext context) {
      Widget verticalDivider = VerticalDivider(
          thickness: 1,
          color: Colors.grey,
      );
      return Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            lcsButton(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  print("Liked");
                },
                buttonColor: Colors.black),
            verticalDivider,
            lcsButton(
                buttonText: "Comment",
                buttonIcon: Icons.comment_outlined,
                buttonAction: () {
                  print("comment");
                },
                buttonColor: Colors.black),
            verticalDivider,
            lcsButton(
                buttonText: "Share",
                buttonIcon: Icons.share_outlined,
                buttonAction: () {
                  print("share");
                },
                buttonColor: Colors.black),
          ],
        ),
      );
  }
}
