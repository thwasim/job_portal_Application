import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../get/education/educationcourse.dart';

class ApiserviceEducationcoursePost {
  Future<dynamic> educationcoursepostfunction(context, String name) async {
    try {
      final response = await Dio().post(
        'http://10.0.2.2:8000/api/education_course/',
        data: {
          "name": name,
        },
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        ApiserviceEducationcourse().educationCourseGetFunction();
      } else {
        log(response.data.toString());
      }
    } on DioError catch (e) {
      log(e.response!.data.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          padding: const EdgeInsets.all(19),
          backgroundColor: Colors.purple,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Text(
            e.response!.data["detail"].toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
          ),
        ),
      );
      if (e.error.toString().contains("SocketException")) {
        log("Connection refused !");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            padding: const EdgeInsets.all(19),
            backgroundColor: Colors.purple,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content: Text(
              "Connection refused !",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
            ),
          ),
        );
        return null;
      }
    }
    return null;
  }
}
