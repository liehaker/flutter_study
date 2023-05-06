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
      backgroundColor: Colors.blueGrey.shade400,
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
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/N2L.gif'),
            ),
            accountName: const Text('Hyuk,Nam-Kung'),
            accountEmail: const Text('liehacker@gmail.com'),
            onDetailsPressed: () {},
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/N2L.gif'),
              ),
            ],
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
