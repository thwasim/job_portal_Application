import 'package:flutter/material.dart';
import 'package:second_project/service/api/profile/post/specialisation.dart';
import '../../../../service/api/profile/get/education/educationcourse.dart';
import '../../../../service/api/profile/get/education/educationlevel.dart';
import '../../../../service/api/profile/get/education/specialisation.dart';
import '../../../../service/api/profile/post/educationcourses.dart';
import '../../../../service/api/profile/post/educationlevel.dart';
import '../model/educationmodel.dart';

class EducationDetalisProvider with ChangeNotifier {
  EducationDetalisProvider() {
    getUsereducationLevel();
    getUsereducationcourse();
    getUsereducationspecialisation();
  }

  String? educationlevel(value) {
    if (value == "null") {
      return (" Is Empty Select One");
    }
    return null;
  }

  final formKeys = GlobalKey<FormState>();

  List<EducationLevel> usereducationlevel = [];
  List<EducationCourse> userEducationcourse = [];
  List<EducationSpecialisation> userEducationspecialisation = [];

  //------------------- education level -------------------//

  getUsereducationLevel() async {
    final response =
        await ApiserviceEducationlevels().educationLevelsGetFunction();
    usereducationlevel.addAll(response!);
    notifyListeners();
  }

  void educationLevelpostfunction(
      BuildContext context, String value, String title) {
    ApiserviceEducationlevelsPost().educationLevelpostfunction(context, title);
  }

  List<DropdownMenuItem<int>>? getDropdowneducationlevel(
      List<EducationLevel> educationlevel) {
    List<DropdownMenuItem<int>>? educationnewlist = [];
    for (var i = 0; i < educationlevel.length; i++) {
      educationnewlist.add(DropdownMenuItem(
          value: i, child: Text(educationlevel[i].title.toString())));
    }
    return educationnewlist;
  }

  //----------------- education course -----------------//

  getUsereducationcourse() async {
    final response =
        await ApiserviceEducationcourse().educationCourseGetFunction();
    userEducationcourse.addAll(response!);
    notifyListeners();
  }

  void educationcoursepostfunction(
      BuildContext context, String values, String name) {
    ApiserviceEducationcoursePost().educationcoursepostfunction(context, name);
  }

  List<DropdownMenuItem<int>>? getDropdowneducationcourse(
      List<EducationCourse> educationcourse) {
    List<DropdownMenuItem<int>>? educationcoursenewlist = [];
    for (var i = 0; i < educationcourse.length; i++) {
      educationcoursenewlist.add(DropdownMenuItem(
          value: i, child: Text(educationcourse[i].name.toString())));
    }
    return educationcoursenewlist;
  }

  //---------------------- education specialisation -----------------------//

  getUsereducationspecialisation() async {
    final response = await ApiserviceEducationspecialisation()
        .educationSpecialisationGetFunction();
    userEducationspecialisation.addAll(response!);
    notifyListeners();
  }

  void educationSpecialisationpostfunction(
      BuildContext context, String value, String name) {
    ApiserviceEducationSpecialisationPost()
        .educationSpecialisationpostfunction(context, name);
  }

  List<DropdownMenuItem<int>>? getDropdowneducationspecialisation(
      List<EducationSpecialisation> educationspecialisation) {
    List<DropdownMenuItem<int>>? educationspecialisationnewlist = [];
    for (var i = 0; i < educationspecialisation.length; i++) {
      educationspecialisationnewlist.add(DropdownMenuItem(
          value: i, child: Text(educationspecialisation[i].name.toString())));
    }
    return educationspecialisationnewlist;
  }
}
