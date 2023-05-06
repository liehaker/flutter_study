import 'package:flutter/material.dart';
import 'package:hard_study/screens/home_screen.dart';
import 'package:hard_study/screens/webview_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        'webview': (context) => const WebviewScreen(),
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
