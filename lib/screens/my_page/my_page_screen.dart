import 'package:flutter/material.dart';
import 'package:game_links_app/screens/find_users/find_users_screen.dart';

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('マイページ'),
        ),
        body: const Center(child: Text('マイページの画面')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                fullscreenDialog: true,
                builder: (context) => FindUsersScreen(),
              ),
            );
          },
          tooltip: 'ユーザーから探す',
          child: const Icon(Icons.search),
        ));
  }
}
