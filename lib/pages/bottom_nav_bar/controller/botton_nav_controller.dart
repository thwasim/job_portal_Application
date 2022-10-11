import 'package:flutter/cupertino.dart';
import 'package:second_project/pages/application/views/application.dart';
import 'package:second_project/pages/home/views/home_page.dart';
import 'package:second_project/pages/notification/views/nofication.dart';
import 'package:second_project/pages/profile/views/profile.dart';

class Bottomprovider with ChangeNotifier {
  int selectedIndex = 0;

  indexupdate(index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Widget> tabItems = [
    const HomePage(),
    const Application(),
    const Notifications(),
    const ProfileScreen(),
  ];
}
