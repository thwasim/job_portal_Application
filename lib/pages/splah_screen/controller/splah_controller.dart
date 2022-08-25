import 'package:flutter/material.dart';
import 'package:second_project/pages/introduction/views/introduction.dart';

class Splahprovider with ChangeNotifier {

  Future<void> gohome(context) async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Introdutionscreen()));
  }
}
