
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/pages/home/views/categorybox.dart';
import 'package:second_project/pages/home/views/constant.dart';
import 'package:second_project/pages/home/views/icon_box.dart';

searchForJobs(Size size) {
  return Container(
    width: size.width,
    height: 65,
    decoration: BoxDecoration(
       color:const Color(0xFFfbc7d4),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        IconButton(
          padding: const EdgeInsets.only(left: 20, right: 20),
          color: Colors.black,
          iconSize: 28,
          icon: const Icon(CupertinoIcons.search),
          onPressed: () {},
        ),
        Expanded(
          child: SizedBox(
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Search for jobs',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 17),
                  border: InputBorder.none),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: IconBox(
              width: 55, height: 50, icon: Icons.line_style_rounded),
        ),
      ],
    ),
  );
}

jobCategory() {
  return Row(
    children: const [
      Expanded(
        flex: 1,
        child: CategoryBox(
          boxColor: kYellowColor,
          title: 'Desing',
          subTitle: '3.2k Jobs',
          iconBox: IconBox(
            height: 40,
            width: 40,
            radius: 10,
            color: Colors.white,
            icon: CupertinoIcons.wand_stars_inverse,
            iconColor: kPrimaryLightColor,
          ),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Expanded(
        flex: 1,
        child: CategoryBox(
          boxColor: kPinkColor,
          title: 'Network',
          subTitle: '2.8k Jobs',
          iconBox: IconBox(
            height: 40,
            width: 40,
            radius: 10,
            color: Colors.white,
            icon: CupertinoIcons.flowchart_fill,
            iconColor: kPrimaryLightColor,
          ),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Expanded(
        flex: 1,
        child: CategoryBox(
          boxColor: kYellowColor,
          title: 'Security',
          subTitle: '4.3k Jobs',
          iconBox: IconBox(
            height: 40,
            width: 40,
            radius: 10,
            color: Colors.white,
            icon: CupertinoIcons.checkmark_shield_fill,
            iconColor: kPrimaryLightColor,
          ),
        ),
      ),
    ],
  );
}
