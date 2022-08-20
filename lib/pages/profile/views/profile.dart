import 'package:flutter/material.dart';
import 'package:second_project/pages/home/views/home_page.dart';
import 'package:second_project/pages/profile/views/profileadress.dart';
import 'package:second_project/pages/profile/views/profiledetials.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6E6E6D),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
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
                    // alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage:
                            const AssetImage("assets/circle-profile.png"),
                        radius: 70,
                      ),
                      Positioned(
                        // top: 80,
                        // left: 100,
                        child: IconButton(
                            onPressed: () {
                              showBottom(context);
                            },
                            icon: const Icon(
                              Icons.add_photo_alternate_rounded,
                              color: Colors.black,
                              size: 40,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: const Color(0xFFFAD0C9)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                        const KeyValue(
                            name: 'Basith Usman',
                            title: 'Name:                  '),
                        const KeyValue(
                            name: 'Basi@gmail.com',
                            title: 'Email:             '),
                        const KeyValue(
                            name: 'kochi           ',
                            title: 'Location:                 '),
                        const KeyValue(
                            name: '+91 9876543456', title: 'Number:       '),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const ProfileDetails(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showBottom(BuildContext context) async {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (ctx) {
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(70)),
              color: Color(0xFFFAD0C9),
            ),
            width: double.infinity,
            height: 200,
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Choice Profile Photo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.camera, color: Colors.black),
                      label: const Text(
                        'Camera',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.image,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Gallery',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
