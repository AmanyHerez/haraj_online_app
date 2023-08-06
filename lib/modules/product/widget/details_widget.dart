import 'package:flutter/material.dart';
import 'package:haraj_app/shared/custom_open_bottom_sheet.dart';

import '../../../shared/components/custom_divider.dart';
import '../../../shared/components/custom_elevated_button.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/style/color_manager.dart';
import '../more_details_ads_bottom_sheet.dart';
class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.white,
        border: Border.all(color: AppColor.containerGreyColor,width: .5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                    width: 120,
                    child: CustomText(
                      text: 'الفئة:',
                      color: AppColor.grey,
                      fontWeight: FontWeight.w300,
                    )),
                SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: 'STV Raptor',
                  color: AppColor.black,
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomeDivider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: 120,
                    child: CustomText(
                      text: 'سنة الانتاج:',
                      fontWeight: FontWeight.w300,
                      color: AppColor.grey,
                    )),
                SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: ' 2014',
                  color: AppColor.black,
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomeDivider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: 120,
                    child: CustomText(
                      text: 'كيلوميترات:',
                      fontWeight: FontWeight.w300,
                      color: AppColor.grey,
                    )),
                SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: '145000',
                  color: AppColor.black,
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomeDivider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: 120,
                    child: CustomText(
                      text: 'نوع الجسم:',
                      fontWeight: FontWeight.w300,
                      color: AppColor.grey,
                    )),
                SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: 'شحنة نقل ',
                  color: AppColor.black,
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomeDivider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: 120,
                    child: CustomText(
                      text: 'الحالة الميكانيكية:',
                      fontWeight: FontWeight.w300,
                      color: AppColor.grey,
                    )),
                SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: 'ممتازة ',
                  color: AppColor.black,
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomeDivider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: 120,
                    child: CustomText(
                      text: 'نوع البائع:',
                      fontWeight: FontWeight.w300,
                      color: AppColor.grey,
                    )),
                SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: 'مالك السيارة ',
                  fontWeight: FontWeight.w300,
                  color: AppColor.black,
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomeDivider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: 120,
                    child: CustomText(
                      text: 'نوع الناقل:',
                      fontWeight: FontWeight.w300,
                      color: AppColor.grey,
                    )),
                SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: 'ناقل اتوماتيكي ',
                  color: AppColor.black,
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomeDivider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: 120,
                    child: CustomText(
                      text: 'قوة المحرك:',
                      fontWeight: FontWeight.w300,
                      color: AppColor.grey,
                    )),
                SizedBox(
                  width: 30,
                ),
                CustomText(
                  text: '400-500 حصان ',
                  color: AppColor.black,
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomeDivider(),
            SizedBox(
              height: 20,
            ),
            CustomElevatedButton(
              text: 'المزيد',
              onPressed: () {
               CustomOpenBottomSheet.openBottomSheet(context, MoreDetailsAdsBottomSheet());
              },
              bgColor: AppColor.white,
              bordercolor: AppColor.primary,
              colorText: AppColor.primary,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
