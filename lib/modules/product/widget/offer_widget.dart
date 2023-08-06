import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_show_dialog.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custom_textformfiled.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/widget/social_container_widget.dart';

import '../../../shared/style/color_manager.dart';
import '../../../shared/widget/row_divider_widget.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.white,
        border: Border.all(color: AppColor.containerGreyColor,width: .5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            CustomText(
              text:"يمكنك تقديم عرض سعر لصاحب الحراج وفي حال تمت الموافقة علية من قبل صاحب الحراج يفتح تواصل بينكما تلقائيا",
              maxLines: 3,
              height: 2,
            ),
            SizedBox(height: 20,),
            CustomTextFomField(title: 'السعر الجديد بدرهم', iconNamePuffix: AssetsImage.dollerIcon,fillColor: AppColor.Grey3,),
            SizedBox(height: 40,),
            CustomElevatedButton(text: 'تقديم عرض', onPressed: (){
              CustomDialog.ShowDialogFunction(context, 'تم ارسال العرض بنجاح');
            },bgColor: AppColor.primary,),
            SizedBox(height: 20,),
            
          ],
        ),
      ),
    );
  }
}
