import 'package:flutter/material.dart';
import 'package:haraj_app/modules/product/more_details_ads_bottom_sheet.dart';
import 'package:haraj_app/modules/product/widget/contact_widget.dart';
import 'package:haraj_app/modules/product/widget/instructions_widget.dart';
import 'package:haraj_app/modules/product/widget/offer_widget.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../shared/assets_manager.dart';
import '../../shared/components/custome_image.dart';

class DetailsAdsCarScreen extends StatefulWidget {
  const DetailsAdsCarScreen({Key? key}) : super(key: key);

  @override
  State<DetailsAdsCarScreen> createState() => _DetailsAdsCarScreenState();
}

class _DetailsAdsCarScreenState extends State<DetailsAdsCarScreen> {
  List<String> list = ['التفاصيل', 'التواصل', 'تقديم عروض', 'ارشادات'];
  String selected = 'التفاصيل';

  changeSelected(String select) {
    selected = select;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/${AssetsImage.background}.png",
                  ),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomSvgImage(
                      imageName: AssetsImage.arrowIcon,
                      width: 8,
                      height: 13,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'تفاصيل الاعلان',
                    style: TextStyle(
                        color: AppColor.black,
                        fontFamily: FontConstants.fontFamily,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.location_on_outlined,
                      color: AppColor.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: AppColor.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/images/${AssetsImage.car}.png",
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: CustomSvgImage(
                                imageName: AssetsImage.expandIcon),
                          ),
                          Container(
                            width: double.infinity,
                            height: 60,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color:AppColor.containerGreyColor,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.zero,
                                  clipBehavior: Clip.antiAlias,
                                  margin: EdgeInsets.only(left: 5,right: 5),
                                  width:60,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: AppColor.primary,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: CustomPngImage(imageName: AssetsImage.car,width: 80,
                                    height: 80,fit: BoxFit.fill,),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomeDivider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CustomText(text: 'هيونداي اكسنت 2022 ستاندر'),
                      Spacer(),
                      CustomText(
                        text: '500000',
                        color: AppColor.primary,
                      ),
                      CustomText(
                        text: 'درهم',
                        color: AppColor.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColor.dividerGreyColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child:
                              CustomSvgImage(imageName: AssetsImage.OBJECTS)),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: "معرض النور لبيع و شراء السيارات"),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: 'يعرض 100 سيارة الان لبيع',
                                fontSize: 14,
                                color: AppColor.grey,
                              ),
                              Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: AppColor.grey,
                                size: 16,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.access_time_outlined,
                                color: AppColor.grey,
                                size: 16,
                              ),
                              CustomText(
                                text: 'قبل 1 ساعة',
                                fontSize: 14,
                                color: AppColor.grey,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                  CustomeDivider(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColor.dividerGreyColor),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: list.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            changeSelected(list[index]);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: list[index] == selected
                                  ? AppColor.primary
                                  : Colors.transparent,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            margin: EdgeInsets.only(left: 4, right: 4),
                            child: Center(
                                child: Text(
                              list[index],
                              style: TextStyle(
                                color: selected == list[index]
                                    ? AppColor.white
                                    : AppColor.grey,
                                fontFamily: FontConstants.fontFamily,
                              ),
                            )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColor.dividerGreyColor),
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
                              showModalBottomSheet(
                                context: context,
                                // elevation: 10,
                                enableDrag: true,
                                isDismissible: false,
                                barrierColor: AppColor.lightGrey,
                                shape: RoundedRectangleBorder(
                                  // <-- SEE HERE
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25.0),
                                  ),
                                ),
                                builder: (context) {
                                  return MoreDetailsAdsBottomSheet();
                                },
                              );
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
                  ),
                  SizedBox(height: 10,),
                  ContactWidget(),
                  SizedBox(height: 10,),
                  SizedBox(height: 10,),
                  OfferWidget(),
                  SizedBox(height: 10,),
                  SizedBox(height: 10,),
                  InstructionsWidget(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
