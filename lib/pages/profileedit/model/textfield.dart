import 'package:flutter/material.dart';
import 'package:second_project/pages/login_page/model/textfield.dart';
import 'package:second_project/pages/profileedit/model/cameragallery.dart';

class Textfeild extends StatelessWidget {
  const Textfeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: const AssetImage("assets/pro.jpg"),
          radius: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        CameraGallery.showBottom(context);
                      },
                      icon: const Icon(
                        Icons.add_photo_alternate_rounded,
                        color: Colors.black,
                        size: 40,
                      )),
                ],
              ),
            ],
          ),
        ),
        const Text(
          'Domain',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        TextFormField(
          maxLength: 20,
          decoration: InputDecoration(
            fillColor: const Color(0xffffffff),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const Text(
          'Name :',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        TextFormField(
          decoration: InputDecoration(
            fillColor: const Color(0xffffffff),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
        const Text(
          'Location :',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        TextFormField(
          decoration: InputDecoration(
            fillColor: const Color(0xffffffff),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
        const Text(
          'Number :',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        TextFormField(
          decoration: InputDecoration(
            fillColor: const Color(0xffffffff),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Material(
          elevation: 9,
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xffffffff),
          child: MaterialButton(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {},
            child: const Text('submit',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
