import 'package:flutter/material.dart';
import 'package:haraj_app/modules/filter/widget/sec_section_filter_widget.dart';
import 'package:haraj_app/modules/filter/widget/third_section_filter_widget.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../shared/assets_manager.dart';
import '../../shared/components/custome_image.dart';
import '../../shared/widget/filter_and_search_item_widget.dart';
import 'bottom_sheet/select_city_bottom_sheet.dart';
import 'bottom_sheet/status_mac_car_bottom_sheet.dart';
import 'bottom_sheet/type_car_bottom_sheet.dart';
import 'bottom_sheet/type_fuel_bottom_sheet.dart';
import 'bottom_sheet/year_production_car_bottom_sheet.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     'الفلتر',
      //     style: TextStyle(
      //       color: AppColor.black,
      //       fontFamily: FontConstants.fontFamily,
      //     ),
      //   ),
      //   leading: Padding(
      //     padding: const EdgeInsets.all(18.0),
      //     child: CustomSvgImage(
      //       imageName: AssetsImage.arrowIcon,
      //       width: 8,
      //       height: 13,
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CustomSvgImage(imageName: AssetsImage.tabBarbackground,width: MediaQuery.sizeOf(context).width,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                  child: Column(
                    children: [


                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: CustomSvgImage(
                              imageName: AssetsImage.arrowIcon,
                              width: 8,
                              height: 13,
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          CustomText(text:  'الفلتر',fontSize: 18),

                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: .5,
                      color: AppColor.containerBorderColor,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'فلتر النتائج حسب ',
                            style: TextStyle(
                                fontFamily: FontConstants.fontFamily,
                                color: AppColor.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FilterAndSearchItemWidget(
                              title: 'موديل السيارة',
                              iconName: AssetsImage.modelCarIcon,
                              widget: TypeCarBottomSheet()),
                          FilterAndSearchItemWidget(
                              title: 'المدينة ',
                              iconName: AssetsImage.cityIcon,
                              widget: SelectCityBottomSheet()),
                          FilterAndSearchItemWidget(
                              title: ' نوع الوقود',
                              iconName: AssetsImage.fuelIcon,
                              widget: TypeFuelBottomSheet()),
                          FilterAndSearchItemWidget(
                              title: ' الحالة الميكانيكية لسيارة',
                              iconName: AssetsImage.macCarIcon,
                              widget: StatusMacCarBottomSheet()),
                          FilterAndSearchItemWidget(
                              title: ' سنة الانتاج',
                              iconName: AssetsImage.yearIcon,
                              widget: YearProductionCarBottomSheet()),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    CustomeDivider(),
                    SizedBox(
                      height: 15,
                    ),
                    SecondFilterWidget(),
                    SizedBox(
                      height: 15,
                    ),
                    ThirdSectionFilterWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    CustomeDivider(),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      child: Row(
                        children: [
                          CustomElevatedButton(
                            text: 'عرض 400 نتيجة ',
                            onPressed: () {},
                            width: 230,
                            bgColor: AppColor.primary,
                            height: 38,
                            colorText: AppColor.white,
                            Radius: 6,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CustomElevatedButton(
                            text: 'افتراضي ',
                            onPressed: () {},
                            width: 76,
                            bgColor: Colors.white,
                            height: 38,
                            Radius: 6,
                            bordercolor: AppColor.primary,
                            colorText: AppColor.primary,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

//   Widget BuildFilterWidget(
//       {required String iconName,
//       required String title,
//       required Widget widget}) {
//     return Container(
//       height: 60,
//       margin: EdgeInsets.only(bottom: 10, top: 10),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(6),
//           border: Border.all(
//             color: AppColor.dividerGreyColor,
//           )),
//       child: Row(
//         children: [
//           Container(
//             height: 60,
//             padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
//             decoration: BoxDecoration(
//                 border: Border(
//                     left: BorderSide(
//               color: AppColor.dividerGreyColor,
//             ))),
//             child: CustomSvgImage(imageName: iconName),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Text(
//             title,
//             style: TextStyle(
//                 fontFamily: FontConstants.fontFamily, color: AppColor.grey),
//           ),
//           Spacer(),
//           IconButton(
//             onPressed: () {
//               showModalBottomSheet(
//                 context: context,
//                 // elevation: 10,
//                 enableDrag: true,
//                 isDismissible: false,
//                 barrierColor: AppColor.lightGrey,
//                 shape: RoundedRectangleBorder(
//                   // <-- SEE HERE
//                   borderRadius: BorderRadius.vertical(
//                     top: Radius.circular(25.0),
//                   ),
//                 ),
//                 builder: (context) {
//                   return widget;
//                 },
//               );
//             },
//             icon: Icon(Icons.arrow_back_ios_new_outlined),
//           ),
//         ],
//       ),
//     );
//   }
}
