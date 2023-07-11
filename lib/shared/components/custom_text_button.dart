import 'package:flutter/material.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import 'custom_text.dart';

class CustomTextButton extends StatelessWidget {
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

  CustomTextButton({
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
    return TextButton(
        onPressed: onPressed,
        child: CustomText(
          text: text,
          color: colorText?? AppColor.primary,
          fontSize: fontSize,
          fontWeight:fontWeight ,

        ));
  }
}
