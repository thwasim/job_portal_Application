import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/profile/controller/profilecomtroller.dart';
import 'package:second_project/service/user_services/user_services.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Education and Experience',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.022,
                ),
                const Text(
                  'Upload File',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Icon(Icons.image_search_sharp),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.14,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all()),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.14,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://media.idownloadblog.com/wp-content/uploads/2016/04/52ff0e80b07d28b590bbc4b30befde52.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('    your resume',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                  IconButton(
                      onPressed: () {
                        context.read<ProfileController>().logout(context);
                      },
                      icon: const Icon(Icons.image_search_rounded))
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        )
      ],
    );
  }
}
