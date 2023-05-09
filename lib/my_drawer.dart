import 'package:flutter/material.dart';
import 'package:hard_study/menu/webview_tile.dart';
import 'menu/flutter_webview_tile.dart';
import 'menu/home_list_tile.dart';
import 'menu/snack_bar_list_tile.dart';
import 'menu/toast_message_bar.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(242, 241, 241, 1),
      child: ListView(
        children: [
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text('Drawer Header'),
          // ),
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/background.png')),
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  // bottomRight: Radius.circular(30),
                )),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/channels4_profile.jpg'),
            ),
            accountName: const Text('Hyuk,Nam-Kung'),
            accountEmail: const Text('liehacker@gmail.com'),
            onDetailsPressed: () {},
            // otherAccountsPictures: const [
            //   CircleAvatar(
            //     backgroundImage: AssetImage('assets/channels4_profile.jpg'),
            //   ),
            // ],
          ),
          const Card(child: HomeListTile()),
          const SnackBarListTile(),
          const ToastMessageBar(),
          const WebViewTile(),
          const FlutterWebViewTile(),
        ],
      ),
    );
  }
}
