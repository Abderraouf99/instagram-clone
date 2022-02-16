import 'package:flutter/material.dart';

class StoryPreviewBubble extends StatefulWidget {
  final String userProfileImage;
  final bool isSeen;
  final String userName;

  // ignore: use_key_in_widget_constructors
  const StoryPreviewBubble({
    required this.userProfileImage,
    required this.isSeen,
    required this.userName,
  });

  @override
  _StoryPreviewBubbleState createState() => _StoryPreviewBubbleState();
}

class _StoryPreviewBubbleState extends State<StoryPreviewBubble> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            gradient: !widget.isSeen
                ? const LinearGradient(
                    colors: [
                      Color(0xffF58529),
                      Color(0xffFEDA77),
                      Color(0xffDD2A7B),
                      Color(0xff8134AF),
                      Color(0xff515BD4)
                    ],
                  )
                : const LinearGradient(
                    colors: [
                      Colors.grey,
                      Colors.grey,
                    ],
                  ),
            shape: BoxShape.circle,
          ),
          child: Container(
            width: 65,
            height: 65,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Image.network(
                widget.userProfileImage,
                height: 10,
                width: 10,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          widget.userName,
          style: TextStyle(
            color: widget.isSeen ? Colors.grey : Colors.black,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
