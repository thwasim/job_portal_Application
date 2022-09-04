import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:second_project/pages/SignUp/model/signupmodel.dart';

import '../pages/bottom_nav_bar/views/bottom_nav.dart';

class Apiservice {

  //**************************** signup ****************************//

  siguppostfunction(context, Signupmodel obj) async {
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
      log(response.toString());
      
      if (response.statusCode == 201) {
        log(response.statusCode.toString());
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => const Bottom_nav()));
      } else {
        log(response.statusCode.toString());
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
