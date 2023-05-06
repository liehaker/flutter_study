import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessageBar extends StatelessWidget {
  const ToastMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'ToastMessage',
        textAlign: TextAlign.end,
      ),
      trailing: const Icon(null),
      onTap: () => toastMessage(context),
      dense: true,
    );
  }
}

toastMessage(BuildContext context) {
  Navigator.pop(context);
  Fluttertoast.showToast(
      msg: 'test',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
