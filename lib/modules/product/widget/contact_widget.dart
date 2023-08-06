import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/widget/social_container_widget.dart';

import '../../../shared/components/custom_elevated_button_icon_text.dart';
import '../../../shared/style/color_manager.dart';
import '../../../shared/widget/row_divider_widget.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

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
              text: 'يمكنك التواصل مع صاحب الحراج من خلال الدردشة المباشرة',
              maxLines: 2,
            ),
            SizedBox(
              height: 18,
            ),
            CustomElevatedButtonRowIconText(
                imageName: AssetsImage.chat,
                text: 'الدردشة ',
                onPressed: () {}),
            SizedBox(
              height: 20,
            ),
            RowDividerWidget(text: 'او'),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
