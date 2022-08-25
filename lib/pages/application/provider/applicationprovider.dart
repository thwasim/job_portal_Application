
import 'package:flutter/cupertino.dart';

class Applicationsprovider with ChangeNotifier{

  int activeStep = 0;
  activestepupdate (index){
    activeStep = index;
    notifyListeners();
  }
  String headerText() {
    switch (activeStep) {
      case 1:
        return 'Short List';

      case 2:
        return 'Interview';

      case 3:
        return 'Completed';

      default:
      
        return 'Applied';
    }
  }
}