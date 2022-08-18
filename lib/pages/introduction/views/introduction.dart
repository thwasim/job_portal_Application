import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/pages/introduction/controller/introdutioncontroller.dart';

class Introdutionscreen extends StatelessWidget {
  Introdutionscreen({Key? key}) : super(key: key);

  final Introductioncontroller controller = Introductioncontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: controller.pagecontroller,
                onPageChanged: controller.selectedpageindex,
                itemCount: controller.Introdutionscreen.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: 500,
                          child: Image.asset(
                            controller.Introdutionscreen[index].imageAssets,
                            fit: BoxFit.fill,
                          )),
                      Text(
                        controller.Introdutionscreen[index].title,
                        style: const TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        controller.Introdutionscreen[index].descreiption,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  );
                }),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                  children: List.generate(
                      controller.Introdutionscreen.length,
                      (index) => Obx(() {
                            return Container(
                              margin: const EdgeInsets.all(4),
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: controller.selectedpageindex.value ==
                                          index
                                      ? Colors.cyan
                                      : Colors.grey,
                                  shape: BoxShape.circle),
                            );
                          }))),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: TextButton(onPressed: () {
                controller.forwardAction();
              }, child: Obx(() {
                return Text(controller.islastpage ? 'Start' : 'Next',style: const TextStyle(color: Colors.cyan),);
              })),
            )
          ],
        ));
  }
}
