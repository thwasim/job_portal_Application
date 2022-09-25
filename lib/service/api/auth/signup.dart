import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../pages/SignUp/model/signupmodel.dart';
import '../../user_services/user_services.dart';

class Apiservicesignup {
  // **************************** signup ****************************//

 Future signuppostfunction(context, Signupmodel obj) async {
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
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log(response.data.toString());

        UserServices().setUserData(response.data["tokens"]["access"]);
        return "success";
      } else {
        log(response.data.toString());
      }
    } on DioError catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(60))),
        padding: const EdgeInsets.all(15),
        backgroundColor: Colors.red,
        content: Text(
          e.response!.data.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ));
      if (e.error.toString().contains("SocketException")) {
        log("Connection refused !");
        return null;
      }
    }
    return null;
  }
}
