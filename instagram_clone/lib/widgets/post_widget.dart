import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';
import 'package:instagram_clone/widgets/story_bubble.dart';
import 'dart:math';

class PostWidget extends StatefulWidget {
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
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget>
    with SingleTickerProviderStateMixin {
  bool _isLiked = false;
  bool _isSaved = false;
  bool _showOverlayLike = false;
  double likeOverlaySize = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onLike() {
    setState(() {
      _isLiked = !_isLiked;
      if (_isLiked) {
        _showOverlayLike = true;
        likeOverlaySize = 100;
      }
    });
    if (_isLiked) {
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _showOverlayLike = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: StoryPreviewBubble(
                    userProfileImage: widget.userProfileURL,
                    isSeen: false,
                    userName: 'Your story',
                    size: 'small',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.userName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
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
          child: Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onDoubleTap: _onLike,
                child: Image.network(
                  widget.postURL,
                  fit: BoxFit.cover,
                ),
              ),
              _showOverlayLike
                  ? AnimatedContainer(
                      duration: const Duration(
                        milliseconds: 250,
                      ),
                      width: _showOverlayLike ? 100 : 32,
                      height: _showOverlayLike ? 100 : 32,
                      child: Icon(
                        Icons.favorite,
                        size: _showOverlayLike ? 100 : 32,
                        color: Colors.white.withOpacity(
                          0.7,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  splashRadius: 1,
                  onPressed: _onLike,
                  icon: Icon(
                    _isLiked ? Icons.favorite : Icons.favorite_border_outlined,
                    color: _isLiked ? Colors.red : Colors.black,
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
              onPressed: () {
                setState(() {
                  _isSaved = !_isSaved;
                });
              },
              icon: Icon(
                _isSaved ? Icons.bookmark : Icons.bookmark_add_outlined,
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
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: '${widget.userName} ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: widget.postBio,
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
