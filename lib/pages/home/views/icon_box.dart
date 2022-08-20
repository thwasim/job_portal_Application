import 'package:flutter/material.dart';
import 'package:second_project/pages/home/views/constant.dart';

class IconBox extends StatelessWidget {
  const IconBox(
      {Key? key,
      this.height = 65,
      this.width = 65,
      this.radius = 20,
      this.color = kPrimaryLightColor,
      this.icon,
      this.iconColor = Colors.white})
      : super(key: key);
  final double height;
  final double width;
  final double radius;
  final Color color;
  final IconData? icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size:28
      ),
    );
  }
}
