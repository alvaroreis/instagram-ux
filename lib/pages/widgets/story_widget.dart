import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class StoryWidget extends StatelessWidget {
  final double size;
  final UserModel user;
  final bool isStoryProfile;

  const StoryWidget({
    Key? key,
    this.size = 75.0,
    required this.user,
    this.isStoryProfile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          Stack(
            children: [
              Visibility(
                visible: !isStoryProfile,
                child: Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff285AEB),
                        Color(0xffd6249f),
                        Color(0xfffd5949),
                        Color(0xfffdf497),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    width: size,
                    height: size,
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Container(
                width: size,
                height: size,
                padding: const EdgeInsets.all(5),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    user.imageUrl,
                  ),
                ),
              ),
              Visibility(
                visible: isStoryProfile,
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: size * .08,
                    right: size * .08,
                  ),
                  width: size,
                  height: size,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: size * .30,
                      height: size * .30,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(size * .03),
                        width: size * .30,
                        height: size * .30,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.add,
                            size: size * .20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: !isStoryProfile,
            child: const SizedBox(
              height: 4,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              isStoryProfile ? 'Seu story' : user.username,
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
