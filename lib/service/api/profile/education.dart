import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:second_project/pages/profileedit/education/model/educationmodel.dart';


class ApiserviceEducationlevels {
  // **************************** Education levels ****************************//

  Future<dynamic> educationlevelspostfunction(
      context, EducationLevelModel objects) async {
    try {
      final response =
          await Dio().post('http://10.0.2.2:8000/api/education_level/',
              data: objects.tojson(),
              options: Options(headers: <String, String>{
                "Content-Type": "application/json",
              }));
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log("success man we got it");
      } else {
        log('error');
      }
    } on DioError catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.red,
        content: Text(
          e.response!.data.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ));
      if (e.error.toString().contains('SocketException')) {
        log("Connection refused !");
        return;
      } else {
        log(e.message.toString());
      }
    }
  }
}

