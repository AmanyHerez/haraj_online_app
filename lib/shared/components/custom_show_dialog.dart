import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class CustomDialog {
  static ShowDialogFunction(BuildContext context, String content) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(

          backgroundColor: AppColor.white,
          title: CustomSvgImage(
            imageName: AssetsImage.checkIcon,
            width: 110,
            height: 100,
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: content,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
      titlePadding: EdgeInsets.only(top: 79,right: 20,left: 20),
          contentPadding: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 75),

        );
      },
    );
  }
}
