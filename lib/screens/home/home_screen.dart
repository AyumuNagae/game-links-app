import 'package:flutter/material.dart';
import 'package:game_links_app/screens/chat/chat_screen.dart';
import 'package:game_links_app/screens/home/home_screen_model.dart';
import 'package:game_links_app/screens/my_page/my_page_screen.dart';
import 'package:game_links_app/screens/post/post_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeScreenModel>(
      create: (_) => HomeScreenModel(),
      child: Consumer<HomeScreenModel>(
        builder: (context, homeScreenModel, child) {
          return Scaffold(
            body: homeScreenBody(context),
            bottomNavigationBar: BottomNavigationBar(
              items: bottomNavBarItems,
              currentIndex: homeScreenModel.currentIndex,
              onTap: (currentIndex) {
                homeScreenModel.onTabTap(currentIndex);
              },
            ),
          );
        },
      ),
    );
  }

  final List<BottomNavigationBarItem> bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'マイページ',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'チャット',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.timeline),
      label: '投稿',
    ),
  ];

  Widget homeScreenBody(BuildContext context) {
    final homeScreenModel = Provider.of<HomeScreenModel>(context);
    final currentIndex = homeScreenModel.currentIndex;
    return Stack(
      children: <Widget>[
        bottomTabScreen(
            currentIndex: currentIndex, tabIndex: 0, screen: MyPageScreen()),
        bottomTabScreen(
            currentIndex: currentIndex, tabIndex: 1, screen: ChatScreen()),
        bottomTabScreen(
            currentIndex: currentIndex, tabIndex: 2, screen: PostScreen()),
      ],
    );
  }

  Widget bottomTabScreen(
      {@required int currentIndex,
      @required int tabIndex,
      @required StatelessWidget screen}) {
    return Visibility(
      visible: currentIndex == tabIndex,
      maintainState: true,
      child: screen,
    );
  }
}
