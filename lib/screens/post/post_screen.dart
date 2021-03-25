import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('投稿a'),
      ),
      body: const Center(child: Text('投稿ページ')),
    );
  }
}
