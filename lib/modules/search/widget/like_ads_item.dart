import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/font_manager.dart';

class LikeAdsItem extends StatelessWidget {
  const LikeAdsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all( width: .5,
          color: AppColor.containerBorderColor,),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 28,
                  height: 28,
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColor.white,
                  ),
                  child: CustomSvgImage(imageName: AssetsImage.heart,),
                ),
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
          SizedBox(width: 12,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                CustomText(
                  text: 'توسان اكسنت 2023',
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    CustomText(
                        text: 'الحالة :',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: AppColor.grey),
                    CustomText(
                        text: ' ممتاز',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.green),
                  ],
                ),
                SizedBox(height: 8,),
                RichText(
                  text: TextSpan(
                      text: '50000',
                      style: TextStyle(color: AppColor.black, fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' درهم',
                          style: TextStyle(
                            color: AppColor.grey,
                            fontWeight: FontWeight.w300,
                            fontFamily: FontConstants.fontFamily,
                          ),
                        )
                      ]),
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
                        color: AppColor.containerGreyColor,
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
                    CustomText(text: 'معرض النور لبيع ...',fontWeight: FontWeight.w300,fontSize: 12,),
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
