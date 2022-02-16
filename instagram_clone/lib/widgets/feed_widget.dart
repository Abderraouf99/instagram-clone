import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post_widget.dart';

class FeedWidget extends StatelessWidget {
  final List<PostWidget> posts;
  // ignore: use_key_in_widget_constructors
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
