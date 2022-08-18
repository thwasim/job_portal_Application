import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Notification',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: const [
                Text(
                    'An email is generated when interviewer scorecards are submitted for stages configured for notifications.')
              ]),
            ),
          );
        },
      ),
    );
  }
}
