import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_head_bottomsheet.dart';

import '../../../../../shared/assets_manager.dart';
import '../../../../../shared/components/custom_divider.dart';
import '../../../../../shared/components/custom_text.dart';
import '../../../../../shared/components/custom_textformfiled.dart';
import '../../../../../shared/style/color_manager.dart';
import 'card_offer_bottom_sheet.dart';

class EditOfferSubmittedBottomSheet extends StatelessWidget {
  const EditOfferSubmittedBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeadBottomSheet(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(
                text: 'تعديل العرض المقدم',
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomeDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CardOfferBottomSheet(),
                  SizedBox(
                    height: 24,
                  ),
                  CustomTextFomField(
                    title: 'السعر الجديد بدرهم',
                    validator: () {},
                    iconNamePuffix: AssetsImage.dollerIcon,
                    fillColor: AppColor.Grey3,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomElevatedButton(
                    text: 'ارسال التعديل',
                    onPressed: () {},
                    bgColor: AppColor.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
