import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_head_bottomsheet.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/components/custom_divider.dart';
import '../../shared/components/custom_text.dart';

class MoreDetailsAdsBottomSheet extends StatelessWidget {
  const MoreDetailsAdsBottomSheet({Key? key}) : super(key: key);

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
              child: Text(
                ' المزيد من التفاصيل ',
                style: TextStyle(fontFamily: FontConstants.fontFamily),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomeDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 150,
                          child: CustomText(
                            text: 'المواصفات الاقليمية :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: 'مواصفات خليجية ',
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
                          width: 150,
                          child: CustomText(
                            text: 'الضمان :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: ' لا',
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
                          width: 150,
                          child: CustomText(
                            text: 'نشر في :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: 'يونيو  12 . 2023 ',
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
                          width: 150,
                          child: CustomText(
                            text: ' اللون الخارجي :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: 'ازرق  ',
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
                          width: 150,
                          child: CustomText(
                            text: 'عدد الابواب :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: ' 4 ابواب ',
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
                          width: 150,
                          child: CustomText(
                            text: 'الحالة :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: 'ممتازة من الداخل والخارج ',
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
                          width: 150,
                          child: CustomText(
                            text: 'اللون الداخلي :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: 'اسود',
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
                          width: 150,
                          child: CustomText(
                            text: 'عدد المقاعد :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: '5 مقاعد',
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
                          width: 150,
                          child: CustomText(
                            text: 'عدد الاسطوانات :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: '8 اسطوانات ',
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
                          width: 150,
                          child: CustomText(
                            text: 'نوع الوقود :',fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: 'بنزين',
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
                          width: 150,
                          child: CustomText(
                            text: 'ميزات تقنية :',
                            fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: 'جر امامي',
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
                          width: 150,
                          child: CustomText(
                            text: 'جهة القيادة :',
                            fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      CustomText(
                        text: 'اليسار',
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
                          width: 150,
                          child: CustomText(
                            text: ' إضافي :',
                            fontWeight: FontWeight.w300,
                            color: AppColor.grey,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 170,
                        child: CustomText(
                          text:
                              'مراقبة المناخ , مقاعد مبرد ,مقاعد جلد , مجسات وقود نظام صوتي , كاميرات الرجوع ',
                          color: AppColor.black,
                          maxLines: 3,
                        ),
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
