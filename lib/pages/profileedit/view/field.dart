import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/profileeditcontroller.dart';
import 'cameragallery.dart';
import 'textfield.dart';

class Textfeild extends StatelessWidget {
  const Textfeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controllerWatch = context.watch<ProfileEditProvider>();
    final controllerRead = context.read<ProfileEditProvider>();
    return Form(
      key: controllerWatch.formKeys,
      child: Column(
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            // controller: controllerWatch.domaincontroller,
            maxLength: 40,
            validator: (value) => controllerWatch.domain(value),
            decoration: InputDecoration(
              hintText: "Domain",
              hintStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              fillColor: const Color(0xffffffff),
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          ProfileFields(
            hint: "Location :",
            controller: controllerWatch.locationcontroller,
            validator: (value) => controllerWatch.location(value),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: controllerWatch.numbercontroller,
            validator: (value) => controllerWatch.number(value),
            decoration: InputDecoration(
              hintText: "Domain",
              hintStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              fillColor: const Color(0xffffffff),
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
          // TextFormField(
          //   decoration: ,
          //   hint: "Number :",
          //   controller: controllerWatch.numbercontroller,
          //   validator: (value) => controllerWatch.number(value),
          //   textInputType: TextInputType.number,
          // ),
          const SizedBox(
            height: 20,
          ),
          ProfileFields(
            hint: "Year Of Experience :",
            // controller: controllerWatch.experiencecontroller,
            validator: (value) => controllerWatch.experience(value),
            textInputType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: controllerWatch.dateofbrithcontroller,
            readOnly: true,
            validator: (value) => controllerWatch.brithdate(value),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.utc(2000),
                  firstDate: DateTime(200),
                  lastDate: DateTime(2100));
              if (pickedDate != null) {
                controllerRead.updatebrithdate(pickedDate);
              } else {
                log("Date is not selected");
              }
            },
            decoration: InputDecoration(
              hintText: "Date of brith :",
              hintStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              prefixIcon: const Icon(Icons.calendar_today),
              fillColor: const Color(0xffffffff),
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ],
      ),
    );
  }
}
