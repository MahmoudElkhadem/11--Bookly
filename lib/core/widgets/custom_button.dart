import 'package:bookly/features/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.backgroundColor,
      this.textColor,
      this.borderRadius,
      required this.text});
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16))),
          child: Text(
            text,
            style: Styles.titleSize16
                .copyWith(color: textColor, fontWeight: FontWeight.w900),
          )),
    );
  }
}
