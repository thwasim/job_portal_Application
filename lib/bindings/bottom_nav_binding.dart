
import 'package:get/get.dart';
import 'package:second_project/pages/bottom_nav_bar/controllers/botton_nav_controller.dart';

class BottomNavBinding extends Bindings{
  @override
  void dependencies() {
    Get.put( Bottomcontroller());
  }
}