import 'package:flutter/material.dart';
import 'package:haraj_app/modules/search/widget/like_ads_item.dart';
import 'package:haraj_app/modules/search/widget/like_ads_widget.dart';
import 'package:haraj_app/modules/search/widget/search_list_item.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_textformfiled.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
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

class SearchListScreen extends StatelessWidget {
  const SearchListScreen({Key? key}) : super(key: key);

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
                    child: CustomTextFomField(
                      title: 'ابحث عن حراج او صاحب حراج سيارة ....',
                      fillColor: AppColor.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      iconNamePuffix: AssetsImage.searchIcon,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomSvgImage(imageName: AssetsImage.searchIcon),
                      SizedBox(width: 5,),
                      CustomText(text: 'عمليات البحت الاخيرة',color: AppColor.grey,),
                      Spacer(),
                      Icon(Icons.close,size: 16,color: AppColor.error,),
                      CustomText(text: 'حذف',color: AppColor.error,fontSize: 12,)
                    ],
                  ),
                  ListView.separated(
                    itemBuilder: (context, index) {
                      return CustomeDivider();
                    },
                    separatorBuilder: (context, index) {
                      return SearchListItem();
                    },
                    itemCount: 8,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
