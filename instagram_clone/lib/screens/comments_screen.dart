import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/widgets/comment_widget.dart';
import 'package:instagram_clone/widgets/story_bubble.dart';

class CommentScreen extends StatelessWidget {
  CommentScreen({Key? key}) : super(key: key);
  final List<String> reactionEmojis = [
    '❤️',
    '🙌',
    '🔥',
    '👏',
    '😢',
    '😍',
    '😮',
    '😂'
  ];
  final List<String> userNames = ['abderraouf', 'Céline', 'Julie'];
  final List<String> userProfileUrl = [
    'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random0.png?alt=media&token=e5ada3b1-809f-4ea5-8f83-35e0eafac2cd',
    'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random2.png?alt=media&token=173c18c3-8b7b-4b21-8949-78b57e7247d5',
    'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random4.png?alt=media&token=14ea36b1-bfba-4866-8a92-9081419acdc2'
  ];
  final List<String> comments = [
    'Amazing horse picture',
    'Looks amazing, where was it ? 😯',
    'This looooks amazing !'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          splashRadius: 1,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Comments',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            splashRadius: 1,
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.paperPlane,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: userNames.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return CommentWidget(
                      hasBorder: true,
                      userName: userNames[index],
                      profilePicture: userProfileUrl[index],
                      comment: comments[index],
                    );
                  }
                  return CommentWidget(
                    hasBorder: false,
                    userName: userNames[index],
                    profilePicture: userProfileUrl[index],
                    comment: comments[index],
                  );
                },
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey.shade300, width: 0.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (final String emoji in reactionEmojis)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        emoji,
                        style: const TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: StoryPreviewBubble(
                      userProfileImage:
                          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random0.png?alt=media&token=e5ada3b1-809f-4ea5-8f83-35e0eafac2cd',
                      isSeen: false,
                      userName: 'Your story',
                      size: 'normal',
                      showText: false,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.blueGrey,
                      decoration: InputDecoration(
                        suffix: Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Post',
                              style: TextStyle(
                                color: Colors.blueAccent.shade400,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        isDense: true,
                        hintText: 'Add comment as abderraouf',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                        ),
                        border: OutlineInputBorder(
                          gapPadding: 0,
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          gapPadding: 0,
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onChanged: (String value) {},
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
