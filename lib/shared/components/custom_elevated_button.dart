import 'package:flutter/material.dart';
import 'package:haraj_app/shared/font_manager.dart';

import '../style/color_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  String text;
  final Function() onPressed;
  FontWeight? fontWeight;
  Color? colorText;
  Color? bgColor;
  Color? bordercolor;
  double? fontSize;
  double? height;
  double? width;
  double? elevation;
  double? Radius;

  CustomElevatedButton({
    required this.text,
    required this.onPressed,
    this.fontWeight,
    this.colorText,
    this.bgColor,
    this.bordercolor,
    this.fontSize,
    this.height,
    this.width,
    this.elevation,
    this.Radius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: colorText ?? AppColor.white,
            fontFamily: FontConstants.fontFamily,
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight?? FontWeight.w500,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? AppColor.bg_button,
          elevation: elevation,
          side: BorderSide(color: bordercolor ?? Colors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Radius ?? 6),
          ),
        ),
      ),
    );
  }
}
