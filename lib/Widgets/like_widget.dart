import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeWidgetPage extends StatefulWidget {
  const LikeWidgetPage({Key? key}) : super(key: key);

  @override
  _LikeWidgetPageState createState() => _LikeWidgetPageState();
}

class _LikeWidgetPageState extends State<LikeWidgetPage> {
  bool isLiked = false;
  final double size = 20;
  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: size,
      isLiked: isLiked,
      likeBuilder: (isLiked) {
        final color = isLiked ? Colors.red : Colors.grey;
        return Icon(
          Icons.favorite,
          color: color,
          size: size,
        );
      },
    );
  }
}
