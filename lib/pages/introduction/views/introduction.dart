import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../controller/introdutioncontroller.dart';

class Introdutionscreen extends StatelessWidget {
  const Introdutionscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Consumer<Introductionprovider>(
            builder: (context, value, child) {
              return PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: value.pagecontroller,
                onPageChanged: (int index) {
                  value.updateIndex(index);
                },
                itemCount: value.introdutionscreen.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: 400.h,
                          child: Image.asset(
                            context
                                .watch<Introductionprovider>()
                                .introdutionscreen[index]
                                .imageAssets,
                            fit: BoxFit.contain,
                          )),
                      Text(
                        context
                            .watch<Introductionprovider>()
                            .introdutionscreen[index]
                            .title,
                        style: TextStyle(
                            fontSize: 45.sp, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        context
                            .watch<Introductionprovider>()
                            .introdutionscreen[index]
                            .descreiption,
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Consumer<Introductionprovider>(
              builder: (context, value, child) {
                return Row(
                    children: List.generate(
                  context
                      .watch<Introductionprovider>()
                      .introdutionscreen
                      .length,
                  (index) => Container(
                    margin: EdgeInsets.all(3.r),
                    width: 16.w,
                    height: 16.h,
                    decoration: BoxDecoration(
                        color: value.selectedpageindex == index
                            ? Colors.cyan
                            : Colors.grey,
                        shape: BoxShape.circle),
                  ),
                ));
              },
            ),
          ),
          Positioned(
            right: 20,
            bottom: 11,
            child: TextButton(
              onPressed: () {
                context.read<Introductionprovider>().forwardAction(context);
              },
              child: Text(
                context.watch<Introductionprovider>().islastpage
                    ? 'Start'
                    : 'Next',
                style: const TextStyle(color: Colors.cyan),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
