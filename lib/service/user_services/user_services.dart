import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  Future<bool> setUserData(String token) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.setString('token', token);
    } catch (e) {
      return false;
    }
  }

  Future<bool> removeUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.remove('token');
    } catch (e) {
      return false;
    }
  }

  Future<dynamic> getUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final res = prefs.getString('token');
      return res == null ? false : res.toString();
    } catch (e) {
      return false;
    }
  }
}

