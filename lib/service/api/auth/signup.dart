import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:second_project/service/url/apiurl.dart';
import '../../../pages/SignUp/model/signupmodel.dart';
import '../../user_services/user_services.dart';

class Apiservicesignup extends Endpoints {
  // **************************** signup ****************************//

  Future signuppostfunction(context, Signupmodel obj) async {
    try {
      final response = await Dio().post(
        "$baseurl$signupurl",
        data: obj.tojson(),
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
          padding: const EdgeInsets.all(15),
          backgroundColor: Colors.red,
          content: Text(
            e.response!.data.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      );
      if (e.error.toString().contains("SocketException")) {
        log("Connection refused !");
        return null;
      }
    }
    return null;
  }
}
