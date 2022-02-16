import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            splashRadius: kNoSplashButton,
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              size: kBottomNavigationButtonSize,
            ),
          ),
          IconButton(
            splashRadius: kNoSplashButton,
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: kBottomNavigationButtonSize,
            ),
          ),
          IconButton(
            splashRadius: kNoSplashButton,
            onPressed: () {},
            icon: const Icon(
              Icons.play_arrow,
              size: kBottomNavigationButtonSize,
            ),
          ),
          IconButton(
            splashRadius: kNoSplashButton,
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag,
              size: kBottomNavigationButtonSize,
            ),
          ),
          IconButton(
            splashRadius: kNoSplashButton,
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              size: kBottomNavigationButtonSize,
            ),
          ),
        ],
      ),
    );
  }
}
