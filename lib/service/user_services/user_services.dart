import 'dart:convert';
import 'package:second_project/pages/login_page/model/loginmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  Future<bool> setUserData(json) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.setString('user', jsonEncode(json));
    } catch (e) {
      return false;
    }
  }

  Future<bool> removeUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.remove('user');
    } catch (e) {
      return false;
    }
  }

  Future<dynamic> getUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final res = prefs.getString('user');
      return res != null
          ? Loginmodel.fromJson(jsonDecode(res.toString()))
          : false;
    } catch (e) {
      return false;
    }
  }
}
