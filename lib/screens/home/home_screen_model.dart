import 'package:flutter/material.dart';

class HomeScreenModel extends ChangeNotifier {
  HomeScreenModel();

  int currentIndex = 0;
  bool isChecked = true;

  void onTabTap(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void onCheckBoxTap({@required bool value}) {
    isChecked = value;
    notifyListeners();
  }
}
