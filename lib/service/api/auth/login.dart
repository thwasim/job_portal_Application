import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:second_project/pages/login_page/model/loginmodel.dart';
import 'package:second_project/service/url/apiurl.dart';
import 'package:second_project/service/user_services/user_services.dart';

class Apiservicelogin extends Endpoints {
  // **************************** login ****************************//

  Future loginpostfunction(context, Loginmodel object) async {
    try {
      final response = await Dio().post(
        "$baseurl$loginurl",
        data: object.tojson(),
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log(response.data.toString());
        return await UserServices().setUserData(response.data)
            ? "success"
            : "false";
      }
    } on DioError catch (e) {
      log(e.response!.data.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.red,
          content: Text(
            e.response!.data.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      );
      if (e.error.toString().contains('SocketException')) {
        log("Connection refused !");
        return;
      } else {
        log(e.toString());
      }
    }
  }
}
