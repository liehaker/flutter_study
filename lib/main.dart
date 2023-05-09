import 'package:flutter/material.dart';
import 'package:hard_study/screens/flutter_webview_plugin_screen.dart';
import 'package:hard_study/screens/home_screen.dart';
import 'package:hard_study/screens/webview_screen.dart';

String gUrl = 'https://www.hyundaicapital.com/main_new/main/CPMNMN0101.hc';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        'webview': (context) => const WebviewScreen(),
        'flutterWebviewPluginScreen': (context) => FlutterWebviewPluginScreen(),
      },
      // home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
