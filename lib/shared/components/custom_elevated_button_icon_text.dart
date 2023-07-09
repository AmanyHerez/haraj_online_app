import 'package:flutter/material.dart';

import '../style/color_manager.dart';
import 'custom_text.dart';
import 'custome_image.dart';
class CustomElevatedButtonRowIconText extends StatelessWidget {
  String text;
  String imageName;
  final Function() onPressed;
  FontWeight? fontWeight;
  Color? colorText;
  Color? bgColor;
  Color? IconColor;
  Color? bordercolor;
  double? fontSize;
  double? height;
  double? width;
  double? elevation;
  double? Radius;

  CustomElevatedButtonRowIconText({
    required this.text,
    required this.imageName,
    required this.onPressed,
    this.fontWeight,
    this.colorText,
    this.bgColor,
    this.IconColor,
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
      height: height??50,
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSvgImage(
              imageName: imageName,
              width: 20,
              height: 20,
              color: IconColor??AppColor.white,
            ),
            SizedBox(
              width: 10,
            ),
            CustomText(
              text: text,
              color: colorText ??AppColor.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? AppColor.primary,
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
