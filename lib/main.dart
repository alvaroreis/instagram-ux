import 'package:flutter/material.dart';
import 'package:ui_instagram_clone/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Intagram Clone',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        iconTheme: const IconThemeData(color: Colors.white),
        scaffoldBackgroundColor: Colors.black,
      ),
      theme: ThemeData(fontFamily: 'Billabong'),
      home: const HomePage(),
    );
  }
}
