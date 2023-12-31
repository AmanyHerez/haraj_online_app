import 'package:flutter/material.dart';
import 'package:haraj_app/modules/product/more_details_ads_bottom_sheet.dart';
import 'package:haraj_app/modules/product/widget/contact_widget.dart';
import 'package:haraj_app/modules/product/widget/details_widget.dart';
import 'package:haraj_app/modules/product/widget/expanded_widget.dart';
import 'package:haraj_app/modules/product/widget/instructions_widget.dart';
import 'package:haraj_app/modules/product/widget/offer_widget.dart';
import 'package:haraj_app/route/routes.dart';
import 'package:haraj_app/shared/components/custom_cached_network_image.dart';
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
            Stack(children: [
              CustomSvgImage(imageName: AssetsImage.tabBarbackground,width: MediaQuery.sizeOf(context).width,),
              Padding(
                padding: const EdgeInsets.only(top: 40,right: 16,left: 16),
                child: Row(
                  children: [
                    IconButton(onPressed: (){ Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_sharp)),

                    SizedBox(
                      width: 100,
                    ),
                    CustomText(text: 'تفاصيل الاعلان',fontSize: 16,fontWeight: FontWeight.w800,),
                    Spacer(),
                    Container(
                      width: 28,
                      height: 28,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child:CustomSvgImage(imageName: AssetsImage.Map,),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 28,
                      height: 28,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: CustomSvgImage(imageName: AssetsImage.heart,),
                    ),
                  ],
                ),
              ),
            ],),

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
                        image: NetworkImage('https://api.ferrari.com/cms/network/medias//resize/6093c2415f1bb670c6d5aac2-ferrari-magazine-dmQZJnIRJp.jpg?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF'),
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
                              color:Colors.white.withOpacity(.5),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.zero,
                                  clipBehavior: Clip.antiAlias,

                                  margin: EdgeInsets.symmetric(horizontal: 3),
                                  width:60,
                                  height: 55,
                                  decoration: BoxDecoration(
                                   border: Border.all(color: AppColor.primary),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: CustomCachedNetworkImage(imageUrl: 'https://api.ferrari.com/cms/network/medias//resize/6093c2415f1bb670c6d5aac2-ferrari-magazine-dmQZJnIRJp.jpg?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF',width: 80,
                                  height: 80,fit: BoxFit.fill,)
                                  // CustomPngImage(imageName: AssetsImage.car,width: 80,
                                  //   height: 80,fit: BoxFit.fill,),
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
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, AppRoutes.GALLERY);
                    },
                    child: Row(
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColor.Grey1,
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
                  ),
                  CustomeDivider(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColor.containerGreyColor,width: .5),
                    ),
                    child: Row(
                      children: [
                        CustomTabBar((){toggleWidgetVisibility(0);}, "التفاصيل", 0,8),
                        CustomTabBar((){toggleWidgetVisibility(1);}, "التواصل", 1,8),
                        CustomTabBar((){toggleWidgetVisibility(2);}, "تقديم عرض", 2,8),
                        CustomTabBar((){toggleWidgetVisibility(3);}, " ارشادات", 3,8),
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
