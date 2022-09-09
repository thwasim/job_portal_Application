import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:second_project/pages/bottom_nav_bar/views/bottom_nav.dart';
import 'package:second_project/pages/login_page/model/loginmodel.dart';



class Apiservicelogin {
  // **************************** login ****************************//

  loginpostfunction(context, Loginmodel object) async {
    try {
      final response = await Dio().post('http://10.0.2.2:8000/api/user/login/',
          data: object.tojson(),
          options: Options(headers: <String, String>{
            "Content-Type": "application/json",
          }));
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => const Bottom_nav()));
      } else {
        log('error');
      }
    } on DioError catch (e) {
      log(e.response!.data);
      if (e.error.toString().contains('SocketException')) {
        log("Connection refused !");
        return;
      }
    }
  }
}
