import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class CustomTextFomField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? textInputType;
  Widget? suffix;
  Widget? prefix;
  final String title;
  final String? errorTitle;
  final double? fontSize;
  final double? radius;
  final String? iconNameSuffix;
  final String iconNamePuffix;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Function? validator;
  final Function? onFieldSubmitted;
  FloatingLabelBehavior? floatingLabelBehavior;
  Color? color;
  Color? fillColor;
  int? maxline;

  CustomTextFomField(
      {required this.title,
      this.validator,
      this.onFieldSubmitted,
      this.controller,
      this.suffix,
      this.prefix,
      this.iconNameSuffix,
      this.radius,
      required this.iconNamePuffix,
      this.fontFamily,
      this.errorTitle,
      this.floatingLabelBehavior,
      this.color,
      this.fillColor,
      this.fontSize,
      this.maxline,
      this.fontWeight,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.primary,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius??6.0),
            borderSide: BorderSide.none,
          ),
          labelText: title,
          floatingLabelBehavior: floatingLabelBehavior,
          labelStyle: TextStyle(
              color: AppColor.grey,
              fontFamily: FontConstants.fontFamily,
              fontSize: fontSize ?? 14,
              fontWeight: fontWeight ?? FontWeight.w400),
          floatingLabelStyle: const TextStyle(
              height: 7,
              color: AppColor.grey,
              fontFamily: FontConstants.fontFamily,
              fontSize: 12,
              fontWeight: FontWeight.w400),
          filled: true,
          fillColor: fillColor ?? Colors.white.withOpacity(0.5),
          prefixIcon: Container(
            width: 50,
            height: 60,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(
              left: 8,
            ),
            decoration: BoxDecoration(

              border: Border(
                left: BorderSide(color: Color(0xFFD0D0D0,),),

              ),
            ),
            child: CustomSvgImage(
                imageName: iconNamePuffix, height: 16, width: 16),
          ),
          suffixIcon: suffix,
          errorText: errorTitle,
          errorStyle: TextStyle(
            color: AppColor.error,
            fontFamily: FontConstants.fontFamily,
          )),
    );
  }
}
