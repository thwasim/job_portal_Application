import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/application/model/application_model.dart';
import 'package:second_project/pages/application/controller/applicationprovider.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 210, 134),
      ),
      backgroundColor: const Color.fromARGB(255, 236, 210, 134),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(40)),
                    height: MediaQuery.of(context).size.height * 0.23,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Company name',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Consumer<Applicationsprovider>(
                          builder: (context, value, child) {
                            return IconStepper(
                              activeStepColor:
                                  const Color.fromARGB(255, 154, 212, 201),
                              stepColor:
                                  const Color.fromARGB(255, 230, 225, 211),
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
                            context.watch<Applicationsprovider>().activeStep !=
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
                            context.watch<Applicationsprovider>().activeStep !=
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
    );
  }

  Widget header(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              context.watch<Applicationsprovider>().headerText(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
