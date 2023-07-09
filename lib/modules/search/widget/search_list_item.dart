import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/style/color_manager.dart';
class SearchListItem extends StatelessWidget {
  const SearchListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,bottom: 12,
      ),
      child: Row(
        children: [
          Icon(Icons.access_time_outlined,color: AppColor.grey,),
          SizedBox(width: 12,),
          CustomText(text: 'سيارة فيراري موديل 2023'),
          Spacer(),
          Icon(Icons.arrow_back_ios_new_outlined,size: 16,color: AppColor.grey,),
        ],
      ),
    );
  }
}
