import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:second_project/pages/profileedit/model/profilemodel.dart';
import 'package:second_project/service/user_services/user_services.dart';

class ApiserviceAddress {
  // **************************** Address Profile ****************************//

  Future<dynamic> profilepostfunction(context, Profilemodel obj) async {
    Dio dio = Dio();
    try {
      log("OkMan");
      String filename = obj.profileimage!.split('/').last;
      FormData formData = FormData.fromMap({
        "profile_image": await MultipartFile.fromFile(obj.profileimage!, filename: filename),
        "city":  obj.location,
        "phone_number": obj.number,
        "dob": obj.dateofbrith
      });
      dio.options.contentType = 'multipart/form-data';
      dio.options.headers["Content-Type"] = "multipart/form-data";
      final datas = await UserServices().getUserData();
      log(datas.toString());
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
        log(response.data.toString());
        log("OKOKOKOKOKOKOKKOKOKOKOOKOKOKOOKOKOKOKO");
      } else {
        log(response.data.toString());
      }
    } on DioError catch (e) {
      log(e.response!.data.toString());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
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

//  #E2D1F9, Teal #317773
//  #8AAAE5, White #FFFFF
//  #FCEDDA, Burnt Orange #EE4E34
//  #89ABE3FF, Bubblegum Pink #EA738DFF
//  Light Purple #AA96DA, Mint #C5FAD5, Butter #FFFFD2
//  Beige #DDC3A5, Black-brown #201E20, Tan #E0A96D
//  Royal Blue #234E70, Pale Yellow #FBF8BE
//  Scarlet #B85042, Light Olive #E7E8D1, Light Teal #A7BEAE
//  Light Purple #AA96DA, Mint #C5FAD5, Butter #FFFFD2

