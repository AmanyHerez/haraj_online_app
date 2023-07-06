import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/components/custom_divider.dart';

class StatusMacCarBottomSheet extends StatelessWidget {
  const StatusMacCarBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(8),
                width: 30,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.dividerGreyColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: AppColor.primary,
                  ),
                  padding: EdgeInsets.all(0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'حدد الحالة الميكانيكية للسيارة ',
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
                  return StatusMacCarWidget();
                },
                separatorBuilder: (context, index) {
                  return CustomeDivider();
                },
                itemCount: 5),
            CustomeDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: CustomElevatedButton(text: 'تم', onPressed: (){},
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

Widget StatusMacCarWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
      children: [
        Text(
          'ممتازة',
          style: TextStyle(fontFamily: FontConstants.fontFamily),
        ),
        Spacer(),
        Icon(
          Icons.check,
          color: AppColor.primary,
        ),
      ],
    ),
  );
}
