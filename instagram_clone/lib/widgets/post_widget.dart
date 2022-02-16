import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/story_bubble.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

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
                  icon: const Icon(
                    Icons.ios_share_sharp,
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
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Liked by Ahmed, Julie and others',
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Céline Beautiful horse picture found at Pexels.com.',
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
