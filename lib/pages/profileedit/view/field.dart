import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/profileedit/view/cameragallery.dart';
import '../../profile/controller/profilecomtroller.dart';
import '../../profile/model/locationget.dart';
import '../controller/profileeditcontroller.dart';

class Textfeild extends StatelessWidget {
  const Textfeild({Key? key}) : super(key: key);
  static int? id;
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
              hintText: "Domain :",
              hintStyle:
                  TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              fillColor: const Color(0xffffffff),
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Consumer<ProfileController>(
            builder: (context, value, child) {
              return DropdownButtonFormField(
                hint: Text(
                  "Location :",
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                ),
                validator: (value) =>
                    controllerWatch.location(value.toString()),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                  filled: true,
                  fillColor: const Color(0xffffffff),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onChanged: (int? newValue) {
                  id = newValue! + 1;
                 log(id.toString());
                },
                items: getDropdownList(value.userlocation) ,
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: controllerWatch.numbercontroller,
            validator: (value) => controllerWatch.number(value),
            decoration: InputDecoration(
              hintText: "Number :",
              hintStyle:
                  TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              fillColor: const Color(0xffffffff),
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          TextFormField(
            controller: controllerWatch.dateofbrithcontroller,
            readOnly: true,
            validator: (value) => controllerWatch.brithdate(value),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
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

  List<DropdownMenuItem<int>>? getDropdownList(List<Location>? location) {
    List<DropdownMenuItem<int>>? newlist = [];
    for (var i = 0; i < location!.length; i++) {
      newlist.add(
          DropdownMenuItem(value: i, child: Text(location[i].name.toString())));
    }
    return newlist;
  }
}
