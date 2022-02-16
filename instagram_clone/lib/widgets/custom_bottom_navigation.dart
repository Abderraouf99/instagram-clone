import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey.shade300,
              width: 0.5,
            ),
          ),
        ),
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
      ),
    );
  }
}
