import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_project/pages/home/views/icon_box.dart';

searchForJobs(Size size) {
  return Container(
    width: size.width,
    height: 62.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15.r),
    ),
    child: Row(
      children: [
        IconButton(
          padding: EdgeInsets.only(left: 20.r, right: 20.r),
          color: Colors.black,
          iconSize: 28.sp,
          icon: const Icon(CupertinoIcons.search),
          onPressed: () {},
        ),
        Expanded(
          child: SizedBox(
            child: TextFormField(
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  fillColor:  Colors.white,
                  filled: true,
                  hintText: 'Search for jobs',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 17),
                  border: InputBorder.none),
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.only(right: 10.r),
          child: IconBox(width: 52.w, height: 47.h, icon: Icons.line_style_rounded),
        ),
      ],
    ),
  );
}
