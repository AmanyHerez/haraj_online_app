import 'package:flutter/material.dart';
import 'package:haraj_app/shared/widget/ads_item_widget.dart';

import '../../../../shared/style/color_manager.dart';
import '../../../../shared/widget/row_divider_widget.dart';
class ResultSearchItem extends StatelessWidget {
  const ResultSearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
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
              childAspectRatio: 0.575,
            ),
            itemBuilder: (context, index) {
              return AdsItemWidget();
            },
            itemCount: 6,
          ),
        ],
      ),
    );;
  }
}
