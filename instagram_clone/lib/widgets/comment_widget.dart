import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/story_bubble.dart';

class CommentWidget extends StatelessWidget {
  final bool hasBorder;
  final String userName;
  final String profilePicture;
  final String comment;

  const CommentWidget({
    required this.hasBorder,
    required this.userName,
    required this.profilePicture,
    required this.comment,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: hasBorder
            ? Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 0.5,
                ),
              )
            : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StoryPreviewBubble(
            userProfileImage: profilePicture,
            isSeen: false,
            userName: 'Your story',
            size: 'small',
            showText: false,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    comment,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '13m',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
