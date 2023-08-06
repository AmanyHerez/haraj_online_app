import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_text.dart';

import '../../../../shared/assets_manager.dart';
import '../../../../shared/components/custome_image.dart';
import '../../../../shared/font_manager.dart';
import '../../../../shared/style/color_manager.dart';

class AdsGalleryItemWidget extends StatelessWidget {
  const AdsGalleryItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(6),

        border: Border.all(color: AppColor.containerGreyColor,width: .5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://img.freepik.com/free-photo/red-luxury-sedan-road_114579-5079.jpg?w=2000'),
                fit: BoxFit.fill,
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColor.white,
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: AppColor.grey,
                  ),
                ),
                Container(
                  width: 66,
                  height: 27,
                  margin: EdgeInsets.all(6),
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
                        text: 'ابو دبي',
                        fontSize: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'توسان اكسنت 2023',
                ),
                SizedBox(
                  height: 8,
                ),
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
                SizedBox(
                  height: 8,
                ),
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
                  height: 8,
                ),
                Divider(
                    height: 1,
                    color: AppColor.dividerGreyColor,
                    thickness: 1,
                    endIndent: 4,
                    indent: 4),
                SizedBox(
                  height: 10,
                ),
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
                    CustomText(
                      text: 'معرض النور لبيع ...',
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      color: AppColor.grey,
                      size: 16,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    CustomText(
                      text: '12. يونيو . 2023',
                      color: AppColor.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
