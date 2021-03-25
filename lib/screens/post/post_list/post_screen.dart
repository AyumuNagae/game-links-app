import 'package:flutter/material.dart';
import 'package:game_links_app/screens/post/post_add/post_add_screen.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('投稿'),
      ),
      body: const Center(child: Text('投稿ページ')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              fullscreenDialog: true,
              builder: (context) => PostAddScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
