import 'package:flutter/material.dart';

class WebViewTile extends StatelessWidget {
  const WebViewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'InAppWebView',
        textAlign: TextAlign.end,
      ),
      trailing: const Icon(null),
      onTap: () => webViewScreen(context),
      dense: true,
    );
  }
}

webViewScreen(BuildContext context) {
  Navigator.pop(context);
  Navigator.pushNamed(context, 'webview');
}
