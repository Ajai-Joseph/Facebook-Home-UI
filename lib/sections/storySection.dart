import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            StoryCard(
              labelText: "Add to story",
              avatar: ajai,
              story: ajai,
              createStoryStatus: true,
            ),
            StoryCard(
              labelText: "Bruce Lee",
              avatar: lee,
                story: a,
            ),
            StoryCard(
              labelText: "Tony Jaa",
              avatar: tony,
              story: b,
            ),
            StoryCard(
              labelText: "Christopher Nolan",
              avatar: nolan,
              story: c,
            ),
            StoryCard(
              labelText: "Robert Downey Jr.",
              avatar: robert,
              story: d,
            ),
            StoryCard(
              labelText: "Watson",
              avatar: watson,
              story: e,
            ),
          ],
        ),
    );
  }
}
