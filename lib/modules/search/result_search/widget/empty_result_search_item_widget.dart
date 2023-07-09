import 'package:flutter/material.dart';

import '../../../../shared/assets_manager.dart';
import '../../../../shared/components/custom_divider.dart';
import '../../../../shared/components/custom_text.dart';
import '../../../../shared/components/custome_image.dart';
import '../../../../shared/style/color_manager.dart';
import '../../../../shared/widget/ads_item_widget.dart';
class EmptyResultSearchItemWidget extends StatelessWidget {
  const EmptyResultSearchItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomSvgImage(
            imageName: AssetsImage.emptySearchIcon,
            width: 48,
            height: 48,
          ),
          SizedBox(
            height: 24,
          ),
          CustomText(
            text: 'لا يوجد نتائج بحث',
            color: AppColor.darkGreyColor,
          ),
          SizedBox(
            height: 24,
          ),
          CustomeDivider(),
          SizedBox(
            height: 16,
          ),
          Align(
              alignment: AlignmentDirectional.topStart,
              child: CustomText(
                text: 'نتائج مشابها',
                fontSize: 16,
              )),
          SizedBox(height: 14,),
          GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 0.559,
            ),
            itemBuilder: (context, index) {
              return AdsItemWidget();
            },
            itemCount: 6,
          ),
        ],
      ),
    );
  }
}
