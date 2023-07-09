import 'package:flutter/material.dart';
import 'package:haraj_app/modules/search/widget/like_ads_item.dart';
import 'package:haraj_app/modules/search/widget/like_ads_widget.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_textformfiled.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../shared/assets_manager.dart';
import '../../shared/components/custom_elevated_button_icon_text.dart';
import '../../shared/components/custom_text.dart';
import '../../shared/components/custom_text_filed.dart';
import '../../shared/widget/filter_and_search_item_widget.dart';
import '../filter/bottom_sheet/select_city_bottom_sheet.dart';
import '../filter/bottom_sheet/status_mac_car_bottom_sheet.dart';
import '../filter/bottom_sheet/type_car_bottom_sheet.dart';
import '../filter/bottom_sheet/type_fuel_bottom_sheet.dart';
import '../filter/bottom_sheet/year_production_car_bottom_sheet.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 194,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/${AssetsImage.appBarBackground}.png",
                  ),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'البحث ',
                        fontSize: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:     CustomTextFomField(
                      title: 'ابحث عن حراج او صاحب حراج سيارة ....',
                      fillColor: AppColor.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      iconNamePuffix: AssetsImage.searchIcon,
                      floatingLabelBehavior: FloatingLabelBehavior.never,),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColor.dividerGreyColor,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'ابحث عن سيارات حسب... ',
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: AppColor.grey,
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
                            SizedBox(height: 16,),
                            CustomElevatedButtonRowIconText(imageName: AssetsImage.searchIcon,text:'بحث ',onPressed: (){}),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CustomeDivider(),
                    SizedBox(
                      height: 16,
                    ),
                    CustomText(
                      text: 'اعلانات قد تعجبك',
                      fontSize: 16,
                    ),
                  ]),
            ),
            SizedBox(
              height: 12,
            ),
            LikeAdsWidget(),

          ],
        ),
      ),
    );
  }
}
