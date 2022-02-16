import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/story_bubble.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

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
    ),
    const StoryPreviewBubble(
      userProfileImage:
          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random2.png?alt=media&token=173c18c3-8b7b-4b21-8949-78b57e7247d5',
      isSeen: false,
      userName: 'Celine',
    ),
    const StoryPreviewBubble(
      userProfileImage:
          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random3.png?alt=media&token=291789ee-08a4-4fa7-8902-cf277a8fc517',
      isSeen: false,
      userName: 'Ahmed',
    ),
    const StoryPreviewBubble(
      userProfileImage:
          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random4.png?alt=media&token=14ea36b1-bfba-4866-8a92-9081419acdc2',
      isSeen: false,
      userName: 'Julie',
    ),
    const StoryPreviewBubble(
      userProfileImage:
          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random6.png?alt=media&token=2b0a0e2a-35ff-44fb-a420-ffbc60960453',
      isSeen: false,
      userName: 'Mirabelle',
    ),
    const StoryPreviewBubble(
      userProfileImage:
          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random7.png?alt=media&token=ac3d5101-6edf-4ff7-955e-db07685fa924',
      isSeen: true,
      userName: 'George',
    ),
    const StoryPreviewBubble(
      userProfileImage:
          'https://firebasestorage.googleapis.com/v0/b/studentcompanion-a4a11.appspot.com/o/default-avatars%2Favatar-random8.png?alt=media&token=69a17bea-3cf2-4446-b2ad-89fb2d9c5310',
      isSeen: true,
      userName: 'Kelsy',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag,
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                size: 32,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Instagram',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Fontspring',
                      fontSize: 30,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        splashRadius: 1,
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
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
                          Icons.message_sharp,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
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
            ),
            const Divider(
              height: 0,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
