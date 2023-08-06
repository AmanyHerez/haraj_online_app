import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_head_bottomsheet.dart';
import 'package:haraj_app/shared/components/custome_image.dart';

import '../../../../../shared/assets_manager.dart';
import '../../../../../shared/components/custom_divider.dart';
import '../../../../../shared/components/custom_elevated_button.dart';
import '../../../../../shared/components/custom_text.dart';
import '../../../../../shared/components/custom_textformfiled.dart';
import '../../../../../shared/style/color_manager.dart';
class CreatePasswordBottomSheet extends StatelessWidget {
  const CreatePasswordBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         CustomHeadBottomSheet(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  CustomSvgImage(imageName: AssetsImage.lockIcon),
                SizedBox(width: 6,),
                CustomText(
                  text: 'انشاء كلمة المرور',
                  fontSize: 16,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          CustomeDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            child: Column(
              children: [

                SizedBox(
                  height: 20,
                ),
                CustomTextFomField(
                  title: 'كلمة المرور ',
                  iconNamePuffix: AssetsImage.passwordIcon,
                  // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                  suffix: Icon(Icons.remove_red_eye),
                  fillColor:AppColor.Grey3,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFomField(
                  title: 'اعاد كتابة كلمة المرور ',
                  iconNamePuffix: AssetsImage.passwordIcon,
                  // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                  suffix: Icon(Icons.remove_red_eye),
                  fillColor:AppColor.Grey3,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(text: 'تسجيل الدخول', onPressed: () {
                  // Navigator.pushNamed(context, );
                },bgColor: AppColor.primary,),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
