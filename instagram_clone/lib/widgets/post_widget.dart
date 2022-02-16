import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';
import 'package:instagram_clone/widgets/story_bubble.dart';
import 'dart:math';

class PostWidget extends StatelessWidget {
  final String userProfileURL;
  final String userName;
  final String postURL;
  final String postBio;
  const PostWidget({
    Key? key,
    required this.userProfileURL,
    required this.userName,
    required this.postURL,
    required this.postBio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: StoryPreviewBubble(
                    userProfileImage:
                        'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random0.png?alt=media&token=e5ada3b1-809f-4ea5-8f83-35e0eafac2cd',
                    isSeen: false,
                    userName: 'Your story',
                    size: 'small',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Céline',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            IconButton(
              splashRadius: kNoSplashButton,
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz_outlined,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 360,
          width: double.infinity,
          child: Image.network(
            'https://images.pexels.com/photos/11082557/pexels-photo-11082557.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  splashRadius: 1,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                  ),
                ),
                IconButton(
                  splashRadius: 1,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                  ),
                ),
                IconButton(
                  splashRadius: 1,
                  onPressed: () {},
                  icon: Transform.rotate(
                    angle: -pi / 4,
                    child: const Icon(
                      Icons.send_outlined,
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              splashRadius: 1,
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_add_outlined,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'Liked by ',
                ),
                TextSpan(
                  text: 'Ahmed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' and ',
                ),
                TextSpan(
                  text: 'others',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'Céline ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Beautiful horse picture found at Pexels.com.',
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'View all comments',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            '22 minutes ago',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }
}
