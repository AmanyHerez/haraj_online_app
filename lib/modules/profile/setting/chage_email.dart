import 'package:flutter/material.dart';
import 'package:haraj_app/modules/profile/setting/widget/bottom_sheet/ceate_password_bottom_sheet.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_show_dialog.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custom_textformfiled.dart';
import 'package:haraj_app/shared/custom_open_bottom_sheet.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custome_image.dart';

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appBarColor,
        centerTitle: true,
        elevation: 0,
        title: CustomText(
          text: 'تغيير البريد الاكتروني',
          fontWeight: FontWeight.w800,
          fontSize: 16,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: AppColor.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 230,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColor.dividerGreyColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'ادخل البريد الاكتروني الجديد',fontWeight: FontWeight.w300,color: AppColor.grey,),
                  SizedBox(height: 16,),
                  CustomTextFomField(title: 'ادخل البريد الاكتروني الجديد', iconNamePuffix: AssetsImage.EmailIcon),
                  SizedBox(height: 24,),
                  CustomElevatedButton(text: 'تغيير', onPressed: (){
                    CustomDialog.ShowDialogFunction(context, 'لقد تم تغيير البريد الأكتروني بنجاح ');
                  },bgColor: AppColor.primary,),
                  SizedBox(height: 16,),
                  

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
