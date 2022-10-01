import 'package:flutter/material.dart';

class DetialsProvider with ChangeNotifier {
  Future<void> gohome(context) async {
    await Future.delayed(const Duration(seconds: 4));
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('TextField AlertDemo'),
          content: Image.asset("assets/processing.gif"),
          actions: <Widget>[
            TextButton(
              child: const Text('SUBMIT'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
