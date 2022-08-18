import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:second_project/pages/application/views/application.dart';
import 'package:second_project/pages/home/views/home_page.dart';
import 'package:second_project/pages/notification/views/nofication.dart';
import 'package:second_project/pages/profile/views/profile.dart';

class Bottomcontroller extends GetxController {
  final RxInt selectedIndex = 0.obs;

  List<Widget> tabItems = [
    HomePage(),
    Applications(),
    Notifications(),
    Profile(),
  ];
}
