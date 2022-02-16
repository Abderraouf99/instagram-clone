import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/widgets/story_bubble.dart';

class DirectMessageScreen extends StatefulWidget {
  const DirectMessageScreen({Key? key}) : super(key: key);

  @override
  _DirectMessageScreenState createState() => _DirectMessageScreenState();
}

class _DirectMessageScreenState extends State<DirectMessageScreen> {
  final List<Widget> _conversations = [
    TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color.fromRGBO(239, 239, 239, 1),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5.0),
        ),
        contentPadding: const EdgeInsets.all(10),
        filled: true,
        focusColor: Colors.grey,
        isDense: true,
        hintText: 'Search',
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        prefixIconColor: Colors.grey,
      ),
      cursorColor: Colors.black,
      onChanged: (value) {},
      style: const TextStyle(
        color: Colors.black,
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Messages',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            '0 requests',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
    const ConversationPreview(
      userName: 'Céline',
      userProfileImage:
          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random2.png?alt=media&token=173c18c3-8b7b-4b21-8949-78b57e7247d5',
    ),
    const SizedBox(
      height: 20,
    ),
    const ConversationPreview(
      userName: 'Julie',
      userProfileImage:
          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random4.png?alt=media&token=14ea36b1-bfba-4866-8a92-9081419acdc2',
    ),
    const SizedBox(
      height: 20,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.recent_actors_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.commentAlt,
              color: Colors.black,
            ),
          ),
        ],
        title: Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              splashRadius: 1,
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            const Text(
              'abderraouf_benchoubane',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: ListView.builder(
          itemCount: _conversations.length,
          itemBuilder: (child, index) {
            return _conversations[index];
          },
        ),
      ),
    );
  }
}

class ConversationPreview extends StatelessWidget {
  final String userName;
  final String userProfileImage;
  const ConversationPreview({
    Key? key,
    required this.userName,
    required this.userProfileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            StoryPreviewBubble(
              userProfileImage: userProfileImage,
              isSeen: false,
              userName: userName,
              size: 'normal',
              showText: false,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Céline',
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sent 25m ago',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.camera_alt,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
