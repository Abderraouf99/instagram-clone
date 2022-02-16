import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  FontAwesomeIcons.facebookMessenger,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
