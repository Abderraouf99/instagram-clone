import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/story_bubble.dart';

class FollowersStories extends StatelessWidget {
  final List<StoryPreviewBubble> stories;
  const FollowersStories({Key? key, required this.stories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 0.5,
          ),
        ),
      ),
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 10),
              child: stories[index],
            );
          },
        ),
      ),
    );
  }
}
