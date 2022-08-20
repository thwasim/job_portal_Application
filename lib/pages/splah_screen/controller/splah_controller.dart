import 'package:get/get.dart';
import 'package:second_project/pages/introduction/views/introduction.dart';

class Splahcontroller extends GetxController {
  @override
  void onInit() {
    gohome();
    super.onInit();
  }

  Future<void> gohome() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.off(Introdutionscreen());
  }
}
