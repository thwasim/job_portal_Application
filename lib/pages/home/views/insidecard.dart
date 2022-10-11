import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cardinside extends StatelessWidget {
  const Cardinside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 27.r,
                backgroundColor: const Color(0xFFFFFFD2),
                child: Image.asset('assets/google.png'),
              ),
            ),
            Text(
              '   Flutter Developer',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 85.w,
            ),
            Text('Company Name',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Text('9 - 10 lack',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ],
    );
  }
}
