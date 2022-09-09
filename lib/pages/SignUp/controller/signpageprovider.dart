import 'package:flutter/cupertino.dart';
import 'package:second_project/service/api_service_signup.dart';
import '../model/signupmodel.dart';

class Signupprovider with ChangeNotifier {
  String? username(value) {
    RegExp regex = RegExp(r'^.{3,}$');
    if (value!.isEmpty) {
      return ("Enter The User Name");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid name(Min. 3 Character)");
    }
    return null;
  }

  String? email(value) {
    if (value!.isEmpty) {
      return ("Please Enter Your Email");
    }
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
      return ("Please Enter a valid email");
    }
    return null;
  }

  String? password(value) {
    RegExp regex = RegExp(r'^.{6,}$');

    if (value!.isEmpty) {
      return ("Type Your Password");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid Password(Min. 6 Character)");
    }
    return null;
  }

  String? confirmpasswords(value) {
    if (value!.isEmpty) {
      return 'Type Your Password';
    }
    if (confirmpasswordcontroller.text.trim() != passwordcontroller.text.trim()) {
      return ("Password don't match");
    }
    return null;
  }

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController rolecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

 void signupfunction(context) {
    Apiservicesignup().signuppostfunction(
        context,
        Signupmodel(
          email: emailcontroller.text.trim(),
          firstName: firstnamecontroller.text.trim(),
          role: rolecontroller.text.trim(),
          password: passwordcontroller.text.trim(),
        ));
  }
}
