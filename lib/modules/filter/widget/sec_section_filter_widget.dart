import 'package:flutter/material.dart';

import '../../../shared/components/custom_elevated_button.dart';
import '../../../shared/font_manager.dart';
import '../../../shared/style/color_manager.dart';
class SecondFilterWidget extends StatelessWidget {
  const SecondFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12, ),
          child: Text(
            'نوع الناقل',
            style: TextStyle(
                fontFamily: FontConstants.fontFamily,
                color: AppColor.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 12, vertical: 12),
          child: Row(
            children: [
              CustomElevatedButton(
                text: 'اوتوماتيكي',
                onPressed: () {},
                width: 154,
                bgColor: AppColor.primary,
                height: 42,
                colorText: AppColor.white,
                Radius: 12,
              ),
              SizedBox(
                width: 15,
              ),
              CustomElevatedButton(
                text: 'يدوي',
                onPressed: () {},
                width: 154,
                bordercolor: AppColor.grey,
                bgColor: AppColor.white,
                height: 42,
                colorText: AppColor.grey,
                Radius: 12,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColor.dividerGreyColor,
          height: 1,
          thickness: 1,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12, ),
          child: Text(
            ' جهة القيادة',
            style: TextStyle(
                fontFamily: FontConstants.fontFamily,
                color: AppColor.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 12, vertical: 12),
          child: Row(
            children: [
              CustomElevatedButton(
                text: 'جهة اليمين',
                onPressed: () {},
                width: 154,
                bgColor: AppColor.primary,
                height: 42,
                colorText: AppColor.white,
                Radius: 12,
              ),
              SizedBox(
                width: 15,
              ),
              CustomElevatedButton(
                text: 'جهة اليسار',
                onPressed: () {},
                width: 154,
                bordercolor: AppColor.grey,
                bgColor: AppColor.white,
                height: 42,
                colorText: AppColor.grey,
                Radius: 12,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColor.dividerGreyColor,
          height: 1,
          thickness: 1,
        ),


        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12, ),
          child: Text(
            'نوع البائع ',
            style: TextStyle(
                fontFamily: FontConstants.fontFamily,
                color: AppColor.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 12, vertical: 12),
          child: Row(
            children: [
              CustomElevatedButton(
                text: 'وكيل ',
                onPressed: () {},
                width: 154,
                bgColor: AppColor.primary,
                height: 42,
                colorText: AppColor.white,
                Radius: 12,
              ),
              SizedBox(
                width: 15,
              ),
              CustomElevatedButton(
                text: 'مالك السيارة',
                onPressed: () {},
                width: 154,
                bordercolor: AppColor.grey,
                bgColor: AppColor.white,
                height: 42,
                colorText: AppColor.grey,
                Radius: 12,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColor.dividerGreyColor,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}