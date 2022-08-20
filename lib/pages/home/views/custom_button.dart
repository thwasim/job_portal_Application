import 'package:flutter/material.dart';
import 'package:second_project/pages/home/views/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.color = kPrimaryLightColor,
      this.textColor = Colors.white,
      this.height = 30,
      this.width = 100,
      this.radius = 10,
      this.ontap,
      required this.text})
      : super(key: key);
  final Color color;
  final Color textColor;
  final double height;
  final double width;
  final double radius;
  final String text;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
