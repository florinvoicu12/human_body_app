import 'package:flutter/material.dart';

class BodyPart extends StatelessWidget {
  const BodyPart({
    super.key,
    required this.onTap,
    required this.leftPadding,
    required this.topPadding,
    required this.width,
    required this.height,
    this.color,
  });

  final void Function() onTap;
  final double leftPadding;
  final double topPadding;
  final double width;
  final double height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: leftPadding, top: topPadding),
        child: Container(
          width: width,
          height: height,
          color: color ?? Colors.transparent,
        ),
      ),
    );
  }
}
