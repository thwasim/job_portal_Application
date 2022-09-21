import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:second_project/pages/SignUp/model/signupmodel.dart';
import 'package:second_project/pages/login_page/views/login_page.dart';

class Apiservicesignup {
  // **************************** signup ****************************//

  signuppostfunction(context, Signupmodel obj) async {
    try {
      log(obj.email);
      final response = await Dio().post(
        'http://10.0.2.2:8000/api/user/signup/',
        data: obj.tojson(),
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );

      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log(response.statusCode.toString());
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) =>  SignInscreen()));
      } else {
        log(response.statusCode.toString());
      }
    } on DioError catch (e) {
      log(e.response!.data.toString());
      if (e.error.toString().contains("'SocketException'")) {
        log("Connection refused !");
        return null;
      }
    }
    return null;
  }
}
