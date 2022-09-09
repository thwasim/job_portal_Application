import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:second_project/pages/SignUp/model/signupmodel.dart';
import '../pages/bottom_nav_bar/views/bottom_nav.dart';

class Apiservicesignup {

  // **************************** signup ****************************//
// Future<UserDataModel?> getUer() async 
  Future<Signupmodel?> signuppostfunction (obj,context) async {

  // }

  // signuppostfunction(context, Signupmodel obj) async {
    try {
      final response = await Dio().post(
        'http://10.0.2.2:8000/api/user/signup/',
        data: obj.tojson(),
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );

      log('sucess');

      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log(response.statusCode.toString());
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => const Bottom_nav()));
      } else {
        log(response.statusCode.toString());
      }
    } on DioError catch (e) {
      log(e.response!.data.toString());
      if (e.error.toString().contains('SocketException')) {
        log("Connection refused !");
        return null;
      }
    }
    return null;
  }
}
