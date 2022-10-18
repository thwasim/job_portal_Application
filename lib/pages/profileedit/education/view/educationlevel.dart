import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../controller/educationcontroller.dart';

class EducationDetails extends StatelessWidget {
  const EducationDetails({Key? key}) : super(key: key);
  static int? id;
  @override
  Widget build(BuildContext context) {
    final controllerread = context.read<EducationDetalisProvider>();
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: context.watch<EducationDetalisProvider>().formKeys,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: Text(
                    "Add Education Details",
                    style:
                        TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Consumer<EducationDetalisProvider>(
                  builder: (context, provider, child) {
                    return DropdownButtonFormField(
                      hint: Text(
                        "Education Levels",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.sp),
                      ),
                      validator: (value) => context
                          .read<EducationDetalisProvider>()
                          .educationlevel(
                            value.toString(),
                          ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 25, 20, 25),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      dropdownColor: Colors.white,
                      onChanged: (int? newValue) {
                        id = newValue! + 1;
                        log(id.toString());
                      },
                      items: provider.getDropdowneducationlevel(
                          provider.usereducationlevel),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Consumer<EducationDetalisProvider>(
                    builder: (context, provider, child) {
                      return DropdownButtonFormField(
                        hint: Text(
                          "Education Course",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.sp),
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        onChanged: (int? newValues) {
                          id = newValues! + 1;
                          log(id.toString());
                        },
                        items: provider.getDropdowneducationcourse(
                            provider.userEducationcourse),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Consumer<EducationDetalisProvider>(
                    builder: (context, provider, child) {
                      return DropdownButtonFormField(
                        hint: Text(
                          "Education Sepcialisation",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.sp),
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        onChanged: (int? newValues) {
                          id = newValues! + 1;
                          log(id.toString());
                        },
                        items: provider.getDropdowneducationspecialisation(
                            provider.userEducationspecialisation),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: InkWell(
                    onTap: () {
                      if (context
                          .watch<EducationDetalisProvider>()
                          .formKeys
                          .currentState!
                          .validate()) {
                        log(EducationDetails.id.toString());
                        controllerread.educationLevelpostfunction(
                            context, EducationDetails.id.toString(), "");

                        controllerread.educationcoursepostfunction(
                            context, EducationDetails.id.toString(), "");

                        controllerread.educationSpecialisationpostfunction(
                            context, EducationDetails.id.toString(), "");
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 300.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
