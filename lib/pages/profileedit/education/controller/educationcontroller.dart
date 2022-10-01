import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:second_project/pages/profileedit/education/model/educationmodel.dart';
import '../../../../service/api/profile/education.dart';

class EducationLevelsController with ChangeNotifier {
  TextEditingController educationLevelController = TextEditingController();

  educationlevelfunction(BuildContext context) {
    log("educationlevelfunction");
    ApiserviceEducationlevels().educationlevelspostfunction(
        context, EducationLevelModel(title: educationLevelController.text));
  }
}
