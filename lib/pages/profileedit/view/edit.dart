import 'package:flutter/material.dart';
import 'package:second_project/pages/profileedit/model/textfield.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 236, 210, 134),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 210, 134),
        title: const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: const[
            Padding(
              padding: EdgeInsets.only(right: 19, left: 19, top: 10),
              child: Textfeild(),
            ),
          ],
        ),
      ),
    );
  }
}
