import 'package:flutter/material.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ListTile(
        onTap: () => homeRoute(context),
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        trailing: const Icon(Icons.add),
      );
    });
  }
}

homeRoute(BuildContext context) {
  Navigator.pop(context);
  Navigator.pushNamed(context, '/');
}
