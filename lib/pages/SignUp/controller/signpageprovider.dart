import 'package:flutter/material.dart';
import '../../../service/api/auth/signup.dart';
import '../../bottom_nav_bar/views/bottom_nav.dart';
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
    RegExp regex = RegExp(r'^.{8,}$');

    if (value!.isEmpty) {
      return ("Type Your Password");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid Password(Min. 8 Character)");
    }
    return null;
  }

  String? confirmpasswords(value) {
    if (value!.isEmpty) {
      return 'Type Your Password';
    }
    if (confirmpasswordController.text.trim() !=
        passwordController.text.trim()) {
      return ("Password don't match");
    }
    return null;
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  void signupfunction(context) {
    Apiservicesignup()
        .signuppostfunction(
            context,
            Signupmodel(
              email: emailController.text.trim(),
              firstName: firstNameController.text.trim(),
              role: roleController.text.trim(),
              password: passwordController.text.trim(),
            ))
        .then(
      (response) {
        if (response == "success") {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const Bottom_nav(),
            ),
          );
        }
      },
    );
  }
}