import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/widget/social_container_widget.dart';

import '../../../shared/style/color_manager.dart';
import '../../../shared/widget/row_divider_widget.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColor.dividerGreyColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            CustomText(
              text: 'يمكنك التواصل مع صاحب الحراج من خلال الدردشة المباشرة',
              maxLines: 2,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvgImage(
                      imageName: AssetsImage.chat,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(text: 'الدردشة',color: AppColor.white,fontWeight: FontWeight.w500,fontSize: 16,)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:  AppColor.primary,


                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            RowDividerWidget(),
            SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialContainer(nameIcon: AssetsImage.twiterIcon),
            SocialContainer(nameIcon: AssetsImage.whatsappIcon),
            SocialContainer(nameIcon: AssetsImage.telphoneIcon),
            ]),
          ],
        ),
      ),
    );
  }
}
