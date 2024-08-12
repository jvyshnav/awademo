import 'package:flutter/material.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width = 35,
    this.height = 35,
    this.size = 20,
    this.icon,
    this.color,
    this.backGroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData? icon;
  final Color? color;
  final Color? backGroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backGroundColor,
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
