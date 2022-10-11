import 'package:flutter/material.dart';
import 'package:second_project/pages/login_page/views/login_page.dart';
import 'package:second_project/pages/profile/model/locationget.dart';
import 'package:second_project/pages/profile/model/profilemodel.dart';
import 'package:second_project/service/api/profile/get/getprofile.dart';
import 'package:second_project/service/api/profile/location.dart';
import 'package:second_project/service/user_services/user_services.dart';

class ProfileController with ChangeNotifier {
  ProfileController() {
    getUserLocation();
    getProfileData();
  }
  List<Location>? list;
  UserProfileGet? userdata;
  List<Location>? userlocation;
  void logout(BuildContext context) {
    UserServices().removeUserData().then(
      (value) {
        if (value) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (ctx) => SignInscreen(),
            ),
            (route) => false,
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                "Something went wrong ! please try again later ",
              ),
            ),
          );
        }
      },
    );
  }

  getProfileData() async {
    userdata = await ApiserviceProfileGet().profileGetFunction();
    notifyListeners();
  }

  getUserLocation() async {
    userlocation = await ApiserviceLocationGet().locationGetFunction();
    list?.addAll(userlocation!);
    notifyListeners();
  }
}
