import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:second_project/pages/profile/model/profilemodel.dart';
import 'package:second_project/service/user_services/user_services.dart';

class ApiserviceProfileGet {
  Future<UserProfileGet?> profileGetFunction() async {
    try {
      final data = await UserServices().getUserData();
      // log(data.toString());
      log("...ooenterd");
      final response = await Dio().get(
        'http://10.0.2.2:8000/api/user/${data != false ? data.id : null}/',
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
          log("sucess : ${response.data.toString()}");
       final datas =  UserProfileGet.fromJson(response.data);
     
       return datas;
      } else {
        log(response.data.toString());
      }
    } on DioError catch (e) {
      log(e.response!.data.toString());
      if (e.error.toString().contains("SocketException")) {
        log("Connection refused !");
        return null;
      }
    }
    return null;
  }
}
