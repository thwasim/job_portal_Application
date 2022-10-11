import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:im_stepper/stepper.dart';
import 'package:provider/provider.dart';
import '../controller/applicationprovider.dart';
import 'applicationschat.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFE2D1F9),
              Color(0xFF317773),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0.r),
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 223, 221, 221),
                              Color.fromARGB(255, 223, 221, 221),
                            ],
                          ),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(40.r)),
                      height: MediaQuery.of(context).size.height * 0.23,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Company name',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w500),
                          ),
                          Consumer<Applicationsprovider>(
                            builder: (context, value, child) {
                              return IconStepper(
                                activeStepColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                stepColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                lineLength: 26,
                                icons: const [
                                  Icon(Icons.check_circle_outline_sharp),
                                  Icon(Icons.three_p_outlined),
                                  Icon(Icons.contact_phone_outlined),
                                  Icon(Icons.flag_circle_outlined),
                                ],
                                activeStep: value.activeStep,
                                onStepReached: (index) {
                                  value.activestepupdate(index);
                                },
                              );
                            },
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.27),
                              context
                                          .watch<Applicationsprovider>()
                                          .activeStep !=
                                      0
                                  ? InkWell(
                                      onTap: () {},
                                      child: const CallAndChat(
                                          name: ' Chat',
                                          icon: Icon(
                                            Icons.chat_outlined,
                                            size: 20,
                                          )),
                                    )
                                  : const SizedBox(),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04),
                              context
                                              .watch<Applicationsprovider>()
                                              .activeStep !=
                                          0 &&
                                      context
                                              .watch<Applicationsprovider>()
                                              .activeStep !=
                                          1
                                  ? InkWell(
                                      onTap: () {},
                                      child: const CallAndChat(
                                          name: ' Call',
                                          icon: Icon(Icons.videocam_outlined)),
                                    )
                                  : const SizedBox()
                            ],
                          ),
                          header(context),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0.r),
            child: Text(
              context.watch<Applicationsprovider>().headerText(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
