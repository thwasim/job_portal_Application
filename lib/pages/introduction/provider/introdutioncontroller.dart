import 'package:flutter/material.dart';
import 'package:second_project/pages/introduction/models/introdutionmodel.dart';
import 'package:second_project/pages/login_page/views/login_page.dart';

class Introductionprovider with ChangeNotifier {
  
  int selectedpageindex = 0;
  PageController pagecontroller = PageController();
  bool get islastpage => selectedpageindex == introdutionscreen.length -1;

  updateIndex(index){ 
     selectedpageindex =index;
    notifyListeners();
  }

  forwardAction(BuildContext context) {
  
    if(selectedpageindex == 2){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Signupscreen()));
    }
    else{
      pagecontroller.nextPage(duration:const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  List<Introductioninfo> introdutionscreen = [
    Introductioninfo('assets/intro_1.png', 'hiring\nemployess'.toUpperCase(),
        'find attractive candidates'),
    Introductioninfo('assets/intro_2.png', 'we are\n hiring'.toUpperCase(),
        'move the right appliction forward'),
    Introductioninfo('assets/computers.jpg', 'recruitment'.toUpperCase(),
        'Make the best move \nto choose your\n new job'),
  ];
}
