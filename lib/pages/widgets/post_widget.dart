import 'package:flutter/material.dart';

import '../../models/user_model.dart';
import 'footer_post_widget.dart';
import 'header_post_widget.dart';

class PostWidget extends StatelessWidget {
  final UserModel user;
  const PostWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderPostWidget(user: user),
        AspectRatio(
          aspectRatio: 1.1,
          child: Image.network(
            user.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        FooterPostWidget(user: user),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
