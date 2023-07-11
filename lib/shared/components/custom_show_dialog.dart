import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
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
          titlePadding: EdgeInsets.only(top: 79, right: 20, left: 20),
          contentPadding:
              EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 75),
        );
      },
    );
  }

  static customShowDialogFunction(BuildContext context, String content,String imageName,
      {Color? color, String? text1, String? text2,int? maxline,FontWeight? fontWeight}) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColor.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.showDilogContainerColor,
                ),
                child: CustomSvgImage(
                  imageName: imageName,
                  width: 38,
                  height: 43,
                  color: color??AppColor.primary,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 262,
                    child: CustomText(
                      text: content,
                      fontWeight:fontWeight ??FontWeight.w500,
                      maxLines: maxline,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                children: [
                  CustomElevatedButton(
                    text: text1 ?? 'نعم',
                    onPressed: () {
                      Navigator.pop(context);
                      CustomDialog.ShowDialogFunction(context,'تمت');
                    },
                    width: 120,
                    colorText: AppColor.primary,
                    bgColor: AppColor.white,
                    bordercolor: AppColor.primary,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CustomElevatedButton(
                    text: text2 ??'لا ',
                    onPressed: () {},
                    width: 120,
                    colorText: AppColor.white,
                    bgColor: AppColor.primary,
                  ),
                ],
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
        );
      },
    );
  }
}
