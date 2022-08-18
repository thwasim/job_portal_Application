import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/pages/splah_screen/controller/splah_controller.dart';

class Screensplash extends StatelessWidget {
  Screensplash({Key? key}) : super(key: key);

  final Splahcontroller controller = Get.put(Splahcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<Splahcontroller>(
      builder: (controller) {
      return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.cyan,
            Color.fromARGB(255, 255, 255, 255),
            Colors.cyan,
          ],
        )),
        child: Center(
            child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/unname.png",
                    ),
                  ),
                ))),
      );
    }));
  }
}
