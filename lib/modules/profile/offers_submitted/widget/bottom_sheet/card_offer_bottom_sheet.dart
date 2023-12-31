import 'package:flutter/material.dart';

import '../../../../../shared/assets_manager.dart';
import '../../../../../shared/components/custom_divider.dart';
import '../../../../../shared/components/custom_text.dart';
import '../../../../../shared/components/custome_image.dart';
import '../../../../../shared/style/color_manager.dart';
class CardOfferBottomSheet extends StatelessWidget {
  const CardOfferBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.white,
        border: Border.all(color: AppColor.containerGreyColor,width: .5),
      ),
      child: Row(
        children: [
          Container(
            width: 140,
            height: 170,
            clipBehavior: Clip.none,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/${AssetsImage.likeImage}.png",
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 66,
                  height: 27,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColor.white,
                  ),
                  child: Row(
                    children: [
                      CustomSvgImage(
                        imageName: AssetsImage.locationIcon,
                        width: 10,
                        height: 14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        text: 'ابوظبي',
                        fontSize: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'توسان اكسنت 2023',
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    InkWell(
                        onTap: (){},
                        child: Icon(Icons.more_vert)),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    CustomText(
                        text: 'السعر المقدم :',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: AppColor.grey),
                    CustomText(
                      text: ' 40000',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(width: 4,),
                    CustomText(
                      text: '  5000000',
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: AppColor.grey,
                      underline: TextDecoration.lineThrough,
                    ),
                    CustomText(
                        text: 'درهم',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    CustomText(
                        text: 'الحالة الطلب :',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: AppColor.grey),
                    SizedBox(width: 4,),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color:  AppColor.lightgreen,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: CustomText(
                        text: 'مقبول',
                        fontSize: 12,
                        fontWeight: FontWeight.w800,

                        color: AppColor.green,

                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomeDivider(),
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColor.container_color,
                      ),
                      child: CustomSvgImage(
                        imageName: AssetsImage.OBJECTS,
                        width: 21,
                        height: 21,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      text: 'معرض النور لبيع وشراء السيارات',
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
