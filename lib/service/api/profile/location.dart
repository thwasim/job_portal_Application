import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:second_project/pages/profile/model/locationget.dart';
import 'package:second_project/service/url/apiurl.dart';

class ApiserviceLocationGet extends Endpoints {
  Future <List<Location>?> locationGetFunction() async {

    try {
      log("etrrre");
      final response = await Dio().get(
        "http://10.0.2.2:8000/api/locations/",
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log("success");
      
        final datas = locationFromJson(response.data);
        log(datas[0].id.toString() );
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
