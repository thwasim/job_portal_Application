import 'package:flutter/material.dart';

class KeyValue extends StatelessWidget {
  final String title;
  final String name;
  const KeyValue({Key? key,  required this.title, required this.name}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.black,
              )),
          Text(name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}