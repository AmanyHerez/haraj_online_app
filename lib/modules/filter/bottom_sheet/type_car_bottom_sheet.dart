import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/components/custom_cached_network_image.dart';
import '../../../shared/components/custom_divider.dart';
import '../../../shared/components/custom_head_bottomsheet.dart';

class TypeCarBottomSheet extends StatelessWidget {
  const TypeCarBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            CustomHeadBottomSheet(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'حدد موديل السيارة',
                style: TextStyle(fontFamily: FontConstants.fontFamily),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomeDivider(),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return TypeModelCarWidget();
                },
                separatorBuilder: (context, index) {
                  return CustomeDivider();
                },
                itemCount: 6),
            CustomeDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomElevatedButton(
                text: 'تم',
                onPressed: () {},
                bgColor: AppColor.primary,
                colorText: AppColor.white,
                Radius: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget TypeModelCarWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
      children: [
        CustomCachedNetworkImage(
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Mercedes-Logo.svg/2048px-Mercedes-Logo.svg.png',
          width: 24,
          height: 24,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'مرسيدس',
          style: TextStyle(fontFamily: FontConstants.fontFamily),
        ),
        Spacer(),
        Icon(
          Icons.check,
          color: AppColor.primary,
          size: 16,
        ),
      ],
    ),
  );
}
