import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:second_project/pages/profileedit/model/profilemodel.dart';
import 'package:second_project/service/api/profile/post/address.dart';

class ProfileEditProvider with ChangeNotifier {
  File? imagefile;
  final formKeys = GlobalKey<FormState>();
  String? locationName;

  locationnameUpdate(String value) {
    locationName = value;
    notifyListeners();
  }

  pickImageBoth(source) async {
    XFile? image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imageTempray = File(image.path);

    imagefile = imageTempray;
    notifyListeners();
    log(imagefile.toString());
  }

  String? domain(value) {
    RegExp regex = RegExp(r'^.{3,}$');
    if (value!.isEmpty) {
      return ("Enter The Domain Name");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid name(Min. 3 Character)");
    }
    return null;
  }

  String? location(value) {
    if (value == "null")
    {
      return ("Location requierd");
    }
  
    return null;
  }

  String? number(value) {
    RegExp regex = RegExp(r'^.{10,}$');
    if (value!.isEmpty) {
      return ("Enter The phone number");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid Number");
    }
    return null;
  }

  String? experience(value) {
    RegExp regex = RegExp(r'^.{1,}$');
    if (value!.isEmpty) {
      return ("Enter The Experience");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid experience");
    }
    return null;
  }

  String? brithdate(value) {
    if (value!.isEmpty) {
      return ("Enter The Experience");
    }
    return null;
  }

  updatebrithdate(pickedDate) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
    dateofbrithcontroller.text = formattedDate;
    notifyListeners();
  }

  TextEditingController numbercontroller = TextEditingController();
  TextEditingController dateofbrithcontroller = TextEditingController();

  void profileEditpostfunction(BuildContext context, String value) {
    ApiserviceAddress().profilepostfunction(
      context,
      Profilemodel(
          location: value.toString(),
          profileimage: imagefile!.path.toString(),
          number: numbercontroller.text,
          dateofbrith: dateofbrithcontroller.text),
    );
    log(value.toString());
    log(imagefile!.path.toString());
    log(numbercontroller.text);
    log(dateofbrithcontroller.text);
  }
}
