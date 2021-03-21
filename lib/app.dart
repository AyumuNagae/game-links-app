import 'package:flutter/material.dart';
import 'package:game_links_app/screens/home/home_screen.dart';

class GameLinksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmae Links',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
