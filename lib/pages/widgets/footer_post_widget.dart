import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

import '../../models/user_model.dart';
import 'icon_button_custom_widget.dart';

// ignore: must_be_immutable
class FooterPostWidget extends StatefulWidget {
  bool isCollapsed;
  final UserModel user;
  final texto =
      "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  FooterPostWidget({
    Key? key,
    this.isCollapsed = true,
    required this.user,
  }) : super(key: key);

  @override
  State<FooterPostWidget> createState() => _FooterPostWidgetState();
}

class _FooterPostWidgetState extends State<FooterPostWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          IconButtonCustomWidget(
            onPressed: () {},
            icon: const Icon(PhosphorIcons.heart),
          ),
          IconButtonCustomWidget(
            onPressed: () {},
            icon: const Icon(PhosphorIcons.chat_circle),
          ),
          IconButtonCustomWidget(
            onPressed: () {},
            icon: const Icon(PhosphorIcons.paper_plane_tilt),
          ),
          const Spacer(),
          IconButtonCustomWidget(
            onPressed: () {},
            icon: const Icon(PhosphorIcons.bookmark_simple),
          )
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1.500 curtidas",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            widget.isCollapsed
                ? InkWell(
                    onTap: () => setState(() {
                      widget.isCollapsed = false;
                    }),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text.rich(
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                            TextSpan(
                              text: widget.user.username,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontWeight: FontWeight.bold),
                              children: [
                                const TextSpan(text: ' '),
                                TextSpan(
                                  text: widget.texto.substring(0, 80),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  children: [
                                    TextSpan(
                                      text: '... mais',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Text.rich(
                    TextSpan(
                      text: '${widget.user.username} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: widget.texto,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
