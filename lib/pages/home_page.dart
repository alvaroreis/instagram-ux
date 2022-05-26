import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';

import 'package:ui_instagram_clone/models/user_model.dart';
import 'package:ui_instagram_clone/pages/widgets/story_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    List<UserModel> users = [
      UserModel(
        username: 'reisalvaro',
        imageUrl:
            'https://tm.ibxk.com.br/2015/09/09/09165955100389.jpg?ims=1200x675',
      ),
      UserModel(
        username: 'robotzu',
        imageUrl:
            'https://img.elo7.com.br/product/original/3B6A5D4/edicao-de-fotos-reais-animes-ou-desenhos-edicao-de-desenho.jpg',
      ),
      UserModel(
        username: 'pintcloud',
        imageUrl:
            'https://ovicio.com.br/wp-content/uploads/2022/03/20220320-ovicio-one-piece-anime-luffy.jpg',
      ),
      UserModel(
        username: 'bronzefriend',
        imageUrl:
            'https://files.tecnoblog.net/wp-content/uploads/2022/03/dororo.jpg',
      ),
      UserModel(
        username: 'ettor',
        imageUrl:
            'https://metagalaxia.com.br/wp-content/uploads/2021/04/capa-animes-esporte-1024x576.jpg',
      ),
      UserModel(
        username: 'tribobuilder',
        imageUrl:
            'https://i0.wp.com/gamelogia.com.br/wp-content/uploads/2017/08/imagens-anime-33.jpg?resize=1280%2C640&ssl=1',
      ),
      UserModel(
        username: 'flipfrigate',
        imageUrl:
            'https://criticalhits.com.br/wp-content/uploads/2021/12/Satoru_Gojo_Anime-910x478.jpg',
      ),
    ];

    List<Widget>? actions = [
      IconButton(
        onPressed: () {},
        icon: const Iconify(
          Uil.plus_square,
          color: Colors.white,
        ), // widget,
      ),
      IconButton(
        onPressed: () {},
        icon: const Iconify(
          Ph.heart_bold,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        color: Colors.white,
        icon: const Iconify(
          Ph.messenger_logo_bold,
          color: Colors.white,
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 2,
        title: Text(
          'Instagram',
          style: theme.textTheme.headline4?.copyWith(
            color: Colors.white,
            fontFamily: 'Billabong',
          ),
        ),
        actions: actions,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: users.length,
                itemBuilder: (context, index) => StoryWidget(
                  user: users[index],
                  isStoryProfile: users[index].loggedIn,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AspectRatio(
              aspectRatio: 1.1,
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
