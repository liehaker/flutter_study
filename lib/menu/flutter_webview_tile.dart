import 'package:flutter/material.dart';

class FlutterWebViewTile extends StatelessWidget {
  const FlutterWebViewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'FlutterWebView',
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
  Navigator.pushNamed(context, 'flutterWebviewPluginScreen');
}
