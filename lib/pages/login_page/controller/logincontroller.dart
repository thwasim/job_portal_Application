import 'package:flutter/material.dart';
import 'package:second_project/service/api/auth/login.dart';
import '../../bottom_nav_bar/views/bottom_nav.dart';
import '../model/loginmodel.dart';

class Loginprovider with ChangeNotifier {
  bool visibility = false;

  updateVisibility() {
    visibility = !visibility;
    notifyListeners();
  }

  String? email(value) {
    if (value!.isEmpty) {
      return ("Please Enter Your Email");
    }
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
      return ("Please Enter a Valid Eamil");
    }
    return null;
  }

  String? passwords(value) {
    RegExp regex = RegExp(r'^.{6,}$');
    if (value!.isEmpty) {
      return ("Password is Required For Login");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid Password(Min. 6 Character");
    }
    return null;
  }

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController rolecontroller = TextEditingController();

  loginfunction(BuildContext context) {
    Apiservicelogin()
        .loginpostfunction(
      context,
      Loginmodel(
          role: rolecontroller.text,
          email: loginEmailController.text.trim(),
          password: loginPasswordController.text.trim()),
    )
        .then(
      (response) {
        if (response == "success") {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => const BottomNavBar()));
        }
      },
    );
  }
}
