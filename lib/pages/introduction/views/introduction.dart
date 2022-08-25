import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/introduction/provider/introdutioncontroller.dart';

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
                return
                 PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller:
                     value.pagecontroller,
                  onPageChanged:(int index){
                    value.updateIndex(index);
                  },
                  itemCount:value.Introdutionscreen
                      .length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                            width: double.infinity,
                            height: 500,
                            child: Image.asset(
                              context
                                  .watch<Introductionprovider>()
                                  .Introdutionscreen[index]
                                  .imageAssets,
                              fit: BoxFit.fill,
                            )),
                        Text(
                          context
                              .watch<Introductionprovider>()
                              .Introdutionscreen[index]
                              .title,
                          style: const TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          context
                              .watch<Introductionprovider>()
                              .Introdutionscreen[index]
                              .descreiption,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    );
                  });

              },
              
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Consumer<Introductionprovider>(
                builder: (context, value, child) {
                  return  Row(
                    children: List.generate(
                  context.watch<Introductionprovider>().Introdutionscreen.length,
                  (index) => Container(
                    margin: const EdgeInsets.all(4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: value
                                    .selectedpageindex ==
                                index
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
              bottom: 10,
              child: TextButton(onPressed: () {
                context.read<Introductionprovider>().forwardAction(context);
              }, child: Text(
                  context.watch<Introductionprovider>().islastpage
                      ? 'Start'
                      : 'Next',
                  style: const TextStyle(color: Colors.cyan),
                ),
             ),
            ),
          ],
        )
        
    );
  }
}
