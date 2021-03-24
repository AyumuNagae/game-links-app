import 'package:flutter/material.dart';

class FindUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザーから探す'),
      ),
      body: const Center(child: Text('ユーザーまたはコミュニティを検索する画面')),
    );
  }
}
