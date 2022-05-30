import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

import '../../models/user_model.dart';
import 'icon_button_custom_widget.dart';

class HeaderPostWidget extends StatelessWidget {
  final UserModel user;
  const HeaderPostWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          title: Text(user.username),
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white30,
              backgroundImage: NetworkImage(user.imageUrl),
            ),
          ),
          trailing: IconButtonCustomWidget(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              PhosphorIcons.dots_three_vertical_bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          height: 2,
          color: Colors.white30,
        ),
      ],
    );
  }
}
