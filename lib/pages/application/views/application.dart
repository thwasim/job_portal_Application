import 'package:flutter/material.dart';

class Applications extends StatelessWidget {
  const Applications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: 100,
              height: 200,
              color: Colors.red,
            )
          ],
      )),
    );
  }
}