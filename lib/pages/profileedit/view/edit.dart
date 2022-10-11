import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/profileedit/controller/profileeditcontroller.dart';
import 'package:second_project/pages/profileedit/education/view/educationlevel.dart';
import 'package:second_project/pages/profileedit/view/field.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controllerWatch = context.watch<ProfileEditProvider>();
    return Scaffold(
      backgroundColor: const Color(0xFFC5FAD5),
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
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 19, left: 19, top: 10).r,
                  child: const  Textfeild(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Text(
                    'Education :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    log("message");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => EducationDetails()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.r, right: 40.r),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 3.w),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: const Icon(Icons.pin_end_rounded),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Add Resume :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40).r,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 3.w),
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
                  color: Colors.black,
                  child: MaterialButton(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15).r,
                    mouseCursor: MouseCursor.defer,
                    onPressed: () {
                      if (controllerWatch.formKeys.currentState!.validate()) {
                        log(Textfeild.id.toString());
                        context
                            .read<ProfileEditProvider>()
                            .profileEditpostfunction(context,Textfeild.id.toString());
                      }
                      else{
                        return;
                      }
                    },
                    child: Text('submit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
