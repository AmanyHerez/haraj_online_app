import 'package:flutter/material.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final double? height;
  final TextAlign? textAlign;
  final Color? color;
  final Color? bgColor;
  final TextDecoration? underline;
  final FontWeight? fontWeight;
  final int? maxLines;
  final String? fontFamily;
  final TextOverflow? overFlow;

  CustomText({ required this.text,
    this.fontSize,
    this.textAlign,
    this.color,
    this.height,
    this.fontWeight,
    this.underline,
    this.maxLines,
    this.fontFamily,
    this.overFlow,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      softWrap: maxLines == 1 ? false : true,
      style: TextStyle(
        fontWeight: fontWeight ??FontWeight.w400,
        fontSize: fontSize?? 14 ,
        color: color ?? AppColor.black,
        fontFamily: fontFamily ?? FontConstants.fontFamily,
        decoration: underline?? TextDecoration.none,
        overflow: overFlow,
        height: height,
        backgroundColor: bgColor,
      ),
    );
  }
}