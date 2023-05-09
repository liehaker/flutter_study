import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../main.dart';

class WebviewScreen extends StatelessWidget {
  const WebviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
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
        child: Stack(
          children: <Widget>[
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse(gUrl),
              ),
              onWebViewCreated: (InAppWebViewController controller) {},
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/N2L.gif"),
                radius: 30,
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
