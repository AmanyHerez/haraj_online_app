import 'package:flutter/material.dart';
import 'package:haraj_app/modules/favorite/widget/process_search_saved_item.dart';

import '../../../shared/style/color_manager.dart';
import '../../../shared/widget/row_divider_widget.dart';
class ProssesSearchSavedWidget extends StatelessWidget {
  const ProssesSearchSavedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16,),
        RowDividerWidget(text: ' 030 عملية',color: AppColor.dividerGreyColor,),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
          return ProcessSearchSavedItem();
        },),
      ],
    );
  }
}
