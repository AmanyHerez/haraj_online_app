import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:readmore/readmore.dart';

import '../../../../shared/style/color_manager.dart';

class AboutGalleryWidget extends StatelessWidget {
  const AboutGalleryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColor.dividerGreyColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColor.containerGreyColor,
              ),
              child: CustomSvgImage(imageName: AssetsImage.OBJECTS),
            ),
            SizedBox(
              height: 16,
            ),
            CustomText(
              text: 'معرض النور لبيع و شراء السيارات',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            SizedBox(
              height: 8,
            ),
            CustomText(
              text: 'يعرض 100 سيارة للبيع ',
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: AppColor.grey,
            ),
            SizedBox(
              height: 20,
            ),
            CustomeDivider(),
            SizedBox(
              height: 12,
            ),
            CustomText(
              text: 'نبذه عن المعرض',
              fontWeight: FontWeight.w300,
            ),
            SizedBox(
              height: 12,
            ),
            ReadMoreText(
              'معرض المنارة اسم يعني الثاقة كل ما تحتاجة في عالم  السيارات تجدهو لدينا معرض المنارة اسم يعني الثاقة كل ما تحتاجة في عالم السيارات تجدهو لدينا شاهد المزيد من الاعلانات تعرف من نحن... ',
              trimLines: 3,
              colorClickableText: AppColor.primary,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'اقرء المزيد',
              trimExpandedText: 'عرض اقل',
              moreStyle: TextStyle(
                fontSize: 14,
                color: AppColor.primary ,
                fontWeight: FontWeight.w500,
                fontFamily: FontConstants.fontFamily,
              ),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: FontConstants.fontFamily,
                color: AppColor.black,
              ),
            ),
            SizedBox(
              height: 18,
            ),

            CustomeDivider(),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'عنوان المعرض',
              fontWeight: FontWeight.w300,
              color: AppColor.darkGreyColor,
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                CustomSvgImage(
                  imageName: AssetsImage.locationIcon,
                ),
                SizedBox(
                  width: 12,
                ),
                CustomText(
                  text: 'الشارقة , العين ,شارع فلسطين',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                Spacer(),
                Container(
                  width: 79,
                  height: 81,
                  padding: EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/images/${AssetsImage.map}.png",
                      ),
                    ),
                  ),
                  child: Container(
                    width: 16,
                    height: 16,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CustomSvgImage(
                      imageName: AssetsImage.locationIcon,
                      width: 12,
                      height: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            CustomeDivider(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
    ;
  }
}
