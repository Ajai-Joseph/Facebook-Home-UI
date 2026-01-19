import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return ElevatedButton.icon(
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
          headerButton(
              buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print("Live button");
              },
              buttonColor: Colors.red),
          verticalDivider,
          headerButton(
              buttonText: "Take photo",
              buttonIcon: Icons.photo_library,
              buttonAction: () {
                print("photo button");
              },
              buttonColor: Colors.green),
          verticalDivider,
          headerButton(
              buttonText: "Room",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print("Chat room");
              },
              buttonColor: Colors.purple),
        ],
      ),
    );
  }
}
