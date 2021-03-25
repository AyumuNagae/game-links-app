import 'package:flutter/material.dart';
import 'package:game_links_app/screens/find_users/find_users_screen.dart';

import 'my_page_menu.dart';

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('マイページ'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 115,
                  width: 115,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/ayumu.jpeg"),
                      ),
                      Positioned(
                        right: -16,
                        bottom: 0,
                        child: SizedBox(
                          height: 46,
                          width: 46,
                          child: TextButton(
                              child: Icon(Icons.camera_alt_outlined),
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: BorderSide(color: Colors.white),
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                MyPageMenu(
                  text: "My Account",
                  icon: Icon(Icons.person),
                  press: () => {},
                ),
                MyPageMenu(
                  text: "Settings",
                  icon: Icon(Icons.settings),
                  press: () {},
                ),
                MyPageMenu(
                  text: "Log Out",
                  icon: Icon(Icons.logout),
                  press: () {},
                ),
              ],
            ),
          ),
        ),
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
