import 'package:flutter/material.dart';

import '../../../shared/style/color_manager.dart';
import '../../../shared/widget/ads_item_widget.dart';
import '../../../shared/widget/row_divider_widget.dart';
class AdsSaveWidget extends StatelessWidget {
  const AdsSaveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16,),
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
            childAspectRatio: 0.5385,
          ),
          itemBuilder: (context, index) {
            return AdsItemWidget();
          },
          itemCount: 6,
        ),
      ],
    );
  }
}