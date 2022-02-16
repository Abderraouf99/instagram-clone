import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/custom_bottom_navigation.dart';
import 'package:instagram_clone/widgets/feed_widget.dart';
import 'package:instagram_clone/widgets/followers_stories.dart';
import 'package:instagram_clone/widgets/post_widget.dart';
import 'package:instagram_clone/widgets/story_bubble.dart';
import 'package:instagram_clone/widgets/top_bar_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<StoryPreviewBubble> stories = [
    const StoryPreviewBubble(
      userProfileImage:
          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random0.png?alt=media&token=e5ada3b1-809f-4ea5-8f83-35e0eafac2cd',
      isSeen: false,
      userName: 'Your story',
      size: 'normal',
    ),
    const StoryPreviewBubble(
        userProfileImage:
            'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random2.png?alt=media&token=173c18c3-8b7b-4b21-8949-78b57e7247d5',
        isSeen: false,
        userName: 'Celine',
        size: 'normal'),
    const StoryPreviewBubble(
        userProfileImage:
            'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random3.png?alt=media&token=291789ee-08a4-4fa7-8902-cf277a8fc517',
        isSeen: false,
        userName: 'Ahmed',
        size: 'normal'),
    const StoryPreviewBubble(
        userProfileImage:
            'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random4.png?alt=media&token=14ea36b1-bfba-4866-8a92-9081419acdc2',
        isSeen: false,
        userName: 'Julie',
        size: 'normal'),
    const StoryPreviewBubble(
        userProfileImage:
            'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random6.png?alt=media&token=2b0a0e2a-35ff-44fb-a420-ffbc60960453',
        isSeen: false,
        userName: 'Mirabelle',
        size: 'normal'),
    const StoryPreviewBubble(
        userProfileImage:
            'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random7.png?alt=media&token=ac3d5101-6edf-4ff7-955e-db07685fa924',
        isSeen: true,
        userName: 'George',
        size: 'normal'),
    const StoryPreviewBubble(
        userProfileImage:
            'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random8.png?alt=media&token=69a17bea-3cf2-4446-b2ad-89fb2d9c5310',
        isSeen: true,
        userName: 'Kelsy',
        size: 'normal'),
  ];

  final List<PostWidget> posts = [
    const PostWidget(),
    const PostWidget(),
    const PostWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigation(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TopBar(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    expandedHeight: 100,
                    collapsedHeight: 100,
                    floating: false,
                    flexibleSpace: SizedBox(
                      height: 100,
                      child: FollowersStories(stories: stories),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return posts[index];
                      },
                      childCount: posts.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
