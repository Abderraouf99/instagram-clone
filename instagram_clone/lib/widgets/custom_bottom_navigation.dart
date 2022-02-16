import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            splashRadius: 1,
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              size: 32,
            ),
          ),
          IconButton(
            splashRadius: 1,
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
          IconButton(
            splashRadius: 1,
            onPressed: () {},
            icon: const Icon(
              Icons.play_arrow,
              size: 32,
            ),
          ),
          IconButton(
            splashRadius: 1,
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag,
              size: 32,
            ),
          ),
          IconButton(
            splashRadius: 1,
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
