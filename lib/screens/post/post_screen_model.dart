import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PostScreenModel extends ChangeNotifier {
  List<Post> postList = [];

  Future getPostList() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('postList').get();
    final docs = snapshot.docs;
    final postList = docs.map((doc) => Post(doc)).postList();
    this.postList = postList;
    notifyListeners();
  }
}
