import 'package:flutter/material.dart';
import 'package:second_project/pages/bottom_nav_bar/views/bottom_nav.dart';
import 'package:second_project/pages/introduction/views/introduction.dart';
import 'package:second_project/service/user_services/user_services.dart';

class Splahprovider with ChangeNotifier {
  void navigate(BuildContext context) {
    UserServices().getUserData().then(
      (value) {
        Future.delayed(const Duration(seconds: 3)).whenComplete(
          () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => value is String
                  ? const Bottom_nav()
                  : const Introdutionscreen(),
            ),
          ),
        );
      },
    );
  }
}
