import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/profileedit/controller/profileeditcontroller.dart';
import 'package:second_project/pages/profileedit/view/field.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controllerWatch = context.watch<ProfileEditProvider>();
    return Scaffold(
      backgroundColor: const Color(0xFFC5FAD5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFC5FAD5),
        title: const Text('Edit Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 19, left: 19, top: 10),
              child: Textfeild(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Education :',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                log("message");
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (ctx) => EducationLevels()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: const Icon(Icons.pin_end_rounded),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Add Resume :',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: const Icon(Icons.drive_folder_upload_outlined),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Material(
              elevation: 9,
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffffffff),
              child: MaterialButton(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  if (controllerWatch.formKeys.currentState!.validate()) {
                     context.read<ProfileEditProvider>().profileEditpostfunction(context);
                  }
                },
                child: const Text('submit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
