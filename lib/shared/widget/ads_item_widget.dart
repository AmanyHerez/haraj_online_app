import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_text.dart';

import '../assets_manager.dart';
import '../components/custome_image.dart';
import '../font_manager.dart';
import '../style/color_manager.dart';

class AdsItemWidget extends StatelessWidget {
  const AdsItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.containerBorderColor,width: 0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6), topRight: Radius.circular(6)),
              image: DecorationImage(
                image:NetworkImage('https://api.ferrari.com/cms/network/medias//resize/6093c2415f1bb670c6d5aac2-ferrari-magazine-dmQZJnIRJp.jpg?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF'),

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
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColor.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
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
                 CustomeDivider(),
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
                        color: AppColor.Grey1,
                        border: Border.all(
                          color: AppColor.Grey2,
                          width: .5,
                        )
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
