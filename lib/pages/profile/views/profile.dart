import 'package:flutter/material.dart';
import '../../profileedit/view/edit.dart';
import '../model/profileadress.dart';
import 'profiledetials.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC5FAD5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFC5FAD5),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://static1.shine.com/l/m/images/blog/online_job_seach_portal_features.jpg'),
                    fit: BoxFit.fill),
              ),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Container(
                  alignment: const Alignment(0.0, 2.8),
                  child: Stack(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/pro.jpg"),
                        radius: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .7,
                  top: MediaQuery.of(context).size.height * .01),
              child: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const ProfileEdit()));
                  },
                  icon: const Icon(
                    Icons.edit_note_sharp,
                    color: Colors.red,
                  ),
                  label: const Text(
                    'edit profile',
                    style: TextStyle(color: Colors.red),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              'Flutter developer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.56,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(4, 4),
                            color: Color.fromARGB(255, 101, 97, 97))
                      ],
                      borderRadius: BorderRadius.circular(26),
                      color: Colors.white),
                  child: Column(
                    children: const [
                      KeyValue(name: 'Basith Usman', title: 'Name       :'),
                      KeyValue(name: 'Basi@gmail.com', title: 'Email        :'),
                      KeyValue(name: 'kochi', title: 'Location   :'),
                      KeyValue(name: '+91 9876543456', title: 'Number    :'),
                      KeyValue(name: '+91 9876543456', title: 'Date of birth  :'),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const ProfileDetails(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}