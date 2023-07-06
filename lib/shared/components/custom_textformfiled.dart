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
    final  String? iconNameSuffix;
  final String iconNamePuffix;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Function? validator;
  final Function? onFieldSubmitted;
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
        required this.iconNamePuffix,
        this.fontFamily,
        this.errorTitle,

        this.color,
        this.fillColor,
        this.fontSize,
        this.maxline,
        this.fontWeight,
        this.textInputType});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      cursorColor: AppColor.primary,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide.none,
          ),
          labelText: title,
          labelStyle: const TextStyle(color: AppColor.grey,fontFamily: FontConstants.fontFamily),
          floatingLabelStyle:
          const TextStyle(height:7, color: AppColor.grey,fontFamily: FontConstants.fontFamily),
          filled: true,
          fillColor: fillColor ??AppColor.fillgrey,

          prefixIcon: Container(
            width: 50,
            height: 60,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(left: 8,),
            decoration: BoxDecoration(
              border: Border(left: BorderSide(color: AppColor.dividerGreyColor),),
            ),
            child: CustomSvgImage(imageName: iconNamePuffix, height: 16, width: 16),
          ),
          suffixIcon:suffix,
          errorText: errorTitle,errorStyle: TextStyle(color: AppColor.error,fontFamily: FontConstants.fontFamily,)

      ),
    );
  }
}
