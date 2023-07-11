import 'package:flutter/material.dart';
import 'package:haraj_app/modules/product/more_details_ads_bottom_sheet.dart';
import 'package:haraj_app/modules/product/widget/contact_widget.dart';
import 'package:haraj_app/modules/product/widget/details_widget.dart';
import 'package:haraj_app/modules/product/widget/expanded_widget.dart';
import 'package:haraj_app/modules/product/widget/instructions_widget.dart';
import 'package:haraj_app/modules/product/widget/offer_widget.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../shared/assets_manager.dart';
import '../../shared/components/custome_image.dart';
import '../../shared/widget/custom_tab_bar.dart';
import 'gallery_page/widget/about_gallery_widget.dart';

class DetailsAdsCarScreen extends StatefulWidget {
  const DetailsAdsCarScreen({Key? key}) : super(key: key);

  @override
  State<DetailsAdsCarScreen> createState() => _DetailsAdsCarScreenState();
}

class _DetailsAdsCarScreenState extends State<DetailsAdsCarScreen> {





  void toggleWidgetVisibility(int index) {
    setState(() {
      SelectedContainer.selectedContainerIndex = index;
    });
  }

  Widget getSelectedWidget() {
    switch ( SelectedContainer.selectedContainerIndex) {
      case 0:
        return DetailsWidget();
      case 1:
        return ContactWidget();
      case 2:
        return OfferWidget();
      default:
        return InstructionsWidget();
    }
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
                  CustomText(text: 'تفاصيل الاعلان',fontSize: 16,),
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
                    width: double.infinity,
                    height: 220,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/images/${AssetsImage.Slider}.png",
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
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ExpandedWidget()),
                                );
                              },
                              child: CustomSvgImage(
                                  imageName: AssetsImage.expandIcon),
                            ),
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
                                  child: CustomPngImage(imageName: AssetsImage.Slider,width: 80,
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
                      CustomText(text: 'هيونداي اكسنت 2022 ستاندر',fontSize: 16,),
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
                    height: 18,
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
                          CustomText(text: "معرض النور لبيع و شراء السيارات",fontWeight: FontWeight.w500,color: AppColor.primary,),
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
                    child: Row(
                      children: [
                        CustomTabBar((){toggleWidgetVisibility(0);}, "التفاصيل", 0),
                        CustomTabBar((){toggleWidgetVisibility(1);}, "التواصل", 1),
                        CustomTabBar((){toggleWidgetVisibility(2);}, "تقديم عرض", 2),
                        CustomTabBar((){toggleWidgetVisibility(3);}, " ارشادات", 3),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Visibility(
                    visible:  SelectedContainer.selectedContainerIndex != -1,
                    child: getSelectedWidget(),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  // Widget buildContainer(Function() onTap,String title,int index){
  //   return InkWell(
  //     onTap:onTap,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(8),
  //         color:selectedContainerIndex == index
  //             ? AppColor.primary
  //             : Colors.transparent,
  //       ),
  //       padding: EdgeInsets.symmetric(
  //           horizontal: 8, vertical: 10),
  //       margin: EdgeInsets.only(left: 4, right: 4),
  //       child: Center(
  //           child: CustomText(text: title, color: selectedContainerIndex == index
  //               ? AppColor.white
  //               : AppColor.grey,)),
  //     ),
  //   );
  // }
}
