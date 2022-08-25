import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/splah_screen/provider/splah_controller.dart';

class Screensplash extends StatelessWidget {
 const Screensplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<Splahprovider>().gohome(context);
    return Scaffold(
      body:  Container(
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
      ),
    );
  }
}
