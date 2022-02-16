import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/camera_screen.dart';
import 'package:instagram_clone/screens/direct_message_screen.dart';
import 'package:instagram_clone/screens/home_screen.dart';

class AppPageView extends StatefulWidget {
  const AppPageView({Key? key}) : super(key: key);

  @override
  _AppPageViewState createState() => _AppPageViewState();
}

class _AppPageViewState extends State<AppPageView> {
  late PageController pageController;
  final List<Widget> appPages = [
    CameraScreen(),
    MyHomePage(),
    DirectMessageScreen()
  ];
  void _onMessageIconTap() {
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 250),
      curve: Curves.bounceInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) {
        return appPages[index];
      },
      itemCount: appPages.length,
    );
  }
}
