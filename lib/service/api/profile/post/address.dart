import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_project/pages/profileedit/model/profilemodel.dart';
import 'package:second_project/service/api/profile/get/getprofile.dart';
import 'package:second_project/service/user_services/user_services.dart';

class ApiserviceAddress {
  // **************************** Address Profile ****************************//

  Future<dynamic> profilepostfunction(context, Profilemodel obj) async {
    Dio dio = Dio();
    try {
      String filename = obj.profileimage!.split('/').last;
      FormData formData = FormData.fromMap(
        {
          "profile_image": await MultipartFile.fromFile(obj.profileimage!,
              filename: filename),
          "city": obj.location,
          "phone_number": "+91${obj.number}",
          "dob": obj.dateofbrith
        },
      );
      dio.options.contentType = 'multipart/form-data';
      dio.options.headers["Content-Type"] = "multipart/form-data";
      final datas = await UserServices().getUserData();
      final response = await Dio().patch(
        'http://10.0.2.2:8000/api/user/${datas != false ? datas.id : null}/',
        data: formData,
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        ApiserviceProfileGet().profileGetFunction();
        Navigator.pop(context);
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
        return null;
      }
    }
    return null;
  }
}
