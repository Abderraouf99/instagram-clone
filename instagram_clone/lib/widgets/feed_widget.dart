import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post_widget.dart';

class FeedWidget extends StatelessWidget {
  final List<PostWidget> posts;
  const FeedWidget({required this.posts});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: posts,
      ),
    );
  }
}
