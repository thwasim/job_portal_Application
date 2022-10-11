import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallAndChat extends StatelessWidget {
  const CallAndChat({Key? key, required this.name, required this.icon})
      : super(key: key);

  final String name;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.16,
            height: MediaQuery.of(context).size.height * 0.03,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 154, 212, 201),
                border: Border.all(),
                borderRadius:  BorderRadius.all(Radius.circular(20.r))),
            child: Row(
              children: [
                icon,
                Text(name),
              ],
            ),
          ),
        )
      ],
    );
  }
}
