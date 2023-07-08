import 'package:flutter/material.dart';

import '../../../../shared/assets_manager.dart';
import '../../../../shared/components/custom_divider.dart';
import '../../../../shared/components/custom_text.dart';
import '../../../../shared/components/custome_image.dart';
import '../../../../shared/style/color_manager.dart';
import '../../../../shared/widget/row_divider_widget.dart';
import 'ads_gallery_item_widget.dart';
class AdsGalleryWidget extends StatelessWidget {
  const AdsGalleryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        RowDividerWidget(text: '030 اعلان',color: AppColor.dividerGreyColor,),
        SizedBox(height: 16,),
        GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.51,
          ),
          itemBuilder: (context, index) {
            return AdsGalleryItemWidget();
          },
          itemCount: 6,
        ),
      ],
    );
  }
}

