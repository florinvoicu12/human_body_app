import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.buttonText,
    this.height,
    this.color,
    this.onPressed,
  });
  final Widget? buttonText;
  final double? height;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? MediaQuery.of(context).size.height / 16,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50 / 2)),
          backgroundColor: color ?? Colors.blue,
        ),
        child: buttonText,
      ),
    );
  }
}
