import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  
  Future<bool> setUserData(String token) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString('token', token);
  }

  Future<bool> removeUserData(String token) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove('token');
  }

  Future<dynamic> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString('token');
    return res == null ? false : res.toString();
  }

}
