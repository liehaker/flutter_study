import 'package:flutter/material.dart';

class SnackBarListTile extends StatelessWidget {
  const SnackBarListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (ctx) {
      return ListTile(
        title: const Text(
          'snackBar',
          textAlign: TextAlign.end,
        ),
        trailing: const Icon(null),
        onTap: () => showSnackBar(context),
        subtitle: const Text(
          '전 Screen',
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 10,
          ),
        ),
        dense: true,
      );
    });
  }
}

void showSnackBar(BuildContext context) {
  Navigator.pop(context);
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      backgroundColor: Colors.teal,
      duration: Duration(milliseconds: 3000),
      content: Text(
        'SnackBar',
        textAlign: TextAlign.center,
      ),
    ),
  );
}
