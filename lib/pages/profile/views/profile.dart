import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../profileedit/view/edit.dart';
import '../controller/profilecomtroller.dart';
import 'profileadress.dart';
import 'profiledetials.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controllerWatch = context.watch<ProfileController>();
    // context.read<ProfileController>().getProfileData(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFE2D1F9),
              Color(0xFF317773),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF317773),
                      Color(0xFF317773),
                    ],
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Container(
                    alignment: const Alignment(0.0, 2.8),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: const AssetImage("assets/pro.jpg"),
                          radius: 64.r,
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
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const ProfileEdit()),
                    );
                  },
                  icon: const Icon(
                    Icons.edit_note_sharp,
                    color: Colors.red,
                  ),
                  label: const Text(
                    'edit profile',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Flutter developer',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
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
                            color: Color.fromARGB(255, 101, 97, 97),
                          )
                        ],
                        color: Colors.white),
                    child: Column(
                      children: [
                        KeyValue(
                            name: controllerWatch.userdata?.firstName ??
                                'Loding..',
                            title: 'Name       :'),
                        KeyValue(
                            name: controllerWatch.userdata?.email ?? "Loding..",
                            title: 'Email        :'),
                        KeyValue(
                            name: controllerWatch.userdata?.phoneNumber ??
                                "Loding..",
                            title: 'Number    :'),
                        KeyValue(
                            name: controllerWatch.userdata?.dob.toString() ??
                                "Loding..",
                            title: 'DateofBirth:'),
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
      ),
    );
  }
}