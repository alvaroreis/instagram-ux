import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:iconly/iconly.dart';

import '/models/user_model.dart';
import '/pages/widgets/story_widget.dart';
import 'widgets/icon_button_custom_widget.dart';
import 'widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    List<UserModel> users = [
      UserModel(
        username: 'reisalvaro',
        comments: Random().nextInt(15),
        imageUrl:
            'https://tm.ibxk.com.br/2015/09/09/09165955100389.jpg?ims=1200x675',
      ),
      UserModel(
        username: 'robotzu',
        comments: Random().nextInt(15),
        imageUrl:
            'https://img.elo7.com.br/product/original/3B6A5D4/edicao-de-fotos-reais-animes-ou-desenhos-edicao-de-desenho.jpg',
      ),
      UserModel(
        username: 'pintcloud',
        comments: Random().nextInt(15),
        imageUrl:
            'https://ovicio.com.br/wp-content/uploads/2022/03/20220320-ovicio-one-piece-anime-luffy.jpg',
      ),
      UserModel(
        username: 'bronzefriend',
        comments: Random().nextInt(15),
        imageUrl:
            'https://files.tecnoblog.net/wp-content/uploads/2022/03/dororo.jpg',
      ),
      UserModel(
        username: 'ettor',
        comments: Random().nextInt(15),
        imageUrl:
            'https://metagalaxia.com.br/wp-content/uploads/2021/04/capa-animes-esporte-1024x576.jpg',
      ),
      UserModel(
        username: 'tribobuilder',
        comments: Random().nextInt(15),
        imageUrl:
            'https://i0.wp.com/gamelogia.com.br/wp-content/uploads/2017/08/imagens-anime-33.jpg?resize=1280%2C640&ssl=1',
      ),
      UserModel(
        username: 'flipfrigate',
        comments: Random().nextInt(15),
        imageUrl:
            'https://criticalhits.com.br/wp-content/uploads/2021/12/Satoru_Gojo_Anime-910x478.jpg',
      ),
    ];

    List<Widget>? actions = [
      IconButtonCustomWidget(
        onPressed: () {},
        icon: const Icon(
          FontAwesome.plus_squared_alt,
        ), // widget,
      ),
      IconButtonCustomWidget(
        onPressed: () {},
        icon: const Icon(
          PhosphorIcons.heart,
        ),
      ),
      IconButtonCustomWidget(
        onPressed: () {},
        icon: const Icon(
          PhosphorIcons.messenger_logo,
        ),
      ),
    ];

    var bottomNavigationBarItens = [
      const BottomNavigationBarItem(
        label: 'Home',
        activeIcon: Icon(IconlyBold.home),
        icon: Icon(IconlyLight.home),
      ),
      const BottomNavigationBarItem(
        label: 'Search',
        activeIcon: Icon(PhosphorIcons.magnifying_glass_bold),
        icon: Icon(PhosphorIcons.magnifying_glass),
      ),
      const BottomNavigationBarItem(
        label: '',
        activeIcon: Icon(IconlyBold.activity),
        icon: Icon(IconlyLight.activity),
      ),
      const BottomNavigationBarItem(
        label: '',
        activeIcon: Icon(IconlyBold.bag_2),
        icon: Icon(IconlyLight.bag_2),
      ),
      BottomNavigationBarItem(
        label: 'Profile',
        icon: SizedBox(
          height: 30,
          child: CircleAvatar(
            backgroundImage: NetworkImage(users.first.imageUrl),
          ),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: bottomNavigationBarItens,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (context, index) => StoryWidget(
                user: users[index],
                isStoryProfile: users[index].loggedIn,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (_, index) => PostWidget(
                user: users[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
