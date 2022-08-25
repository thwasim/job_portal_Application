import 'package:flutter/cupertino.dart';

class Loginprovider with ChangeNotifier {
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
}
