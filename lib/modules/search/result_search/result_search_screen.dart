import 'package:flutter/material.dart';
import 'package:haraj_app/modules/search/result_search/widget/empty_result_search_item_widget.dart';
import 'package:haraj_app/modules/search/result_search/widget/result_search_item.dart';
import 'package:haraj_app/modules/search/widget/like_ads_item.dart';
import 'package:haraj_app/modules/search/widget/like_ads_widget.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_elevated_button_icon_text.dart';
import 'package:haraj_app/shared/components/custom_textformfiled.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_floating_action_button.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/widget/ads_item_widget.dart';

class RwsultSearchScreen extends StatelessWidget {
  const RwsultSearchScreen({Key? key}) : super(key: key);

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
              height: 210,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/${AssetsImage.appBarBackground}.png",
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CustomSvgImage(
                            imageName: AssetsImage.arrowIcon,
                            width: 8,
                            height: 13,
                          ),
                        ),
                        Spacer(),
                        CustomText(
                          text: 'نتائج البحث',
                          fontSize: 16,
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 320,
                          child: CustomTextFomField(
                            title: 'ابحث عن حراج او صاحب حراج سيارة ....',
                            fillColor: AppColor.white,
                            fontSize: 12,
                            radius: 10,
                            fontWeight: FontWeight.w300,
                            iconNamePuffix: AssetsImage.searchIcon,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            suffix: Icon(
                              Icons.close,
                              color: AppColor.error,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomSvgImage(imageName: AssetsImage.filterIcon),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ResultSearchItem(),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
