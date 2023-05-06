import 'package:flutter/material.dart';
import '../my_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Not too late",
        ),
        actions: <Widget>[
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage("assets/N2L.gif"),
              radius: 30,
              backgroundColor: Colors.transparent,
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Divider(
                height: 10.0,
                color: Colors.blueAccent,
              ),
              Text(
                '2023.05.06',
                textAlign: TextAlign.start,
              ),
              Divider(
                height: 10.0,
                color: Colors.blueAccent,
              ),
              Text(
                'SnackBar',
                textAlign: TextAlign.start,
              ),
              Text(
                'ToastMessage',
                textAlign: TextAlign.start,
              ),
              Text(
                'InAppWebView',
                textAlign: TextAlign.start,
              ),
              Text(
                'FlutterWebView',
                textAlign: TextAlign.start,
              ),
              Divider(
                height: 20.0,
                color: Colors.blueAccent,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
