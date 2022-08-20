import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:second_project/pages/introduction/models/introdutionmodel.dart';
import 'package:second_project/pages/login_page/views/login_page.dart';

class Introductioncontroller extends GetxController {
  Rx selectedpageindex = 0.obs;
  var pagecontroller = PageController();
  bool get islastpage => selectedpageindex.value == Introdutionscreen.length - 1;

  forwardAction() {
    if(islastpage){
      Get.off( Signupscreen());
    }else{
      pagecontroller.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  // ignore: non_constant_identifier_names
  List<Introductioninfo> Introdutionscreen = [
    Introductioninfo('assets/intro_1.png', 'hiring\nemployess'.toUpperCase(),
        'find attractive candidates'),
    Introductioninfo('assets/intro_2.png', 'we are\n hiring'.toUpperCase(),
        'move the right appliction forward'),
    Introductioninfo('assets/computers.jpg', 'recruitment'.toUpperCase(),
        'Make the best move \nto choose your\n new job'),
  ];
}
