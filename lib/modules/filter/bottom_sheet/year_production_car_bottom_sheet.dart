import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/components/custom_divider.dart';

class YearProductionCarBottomSheet extends StatelessWidget {
  const YearProductionCarBottomSheet({Key? key}) : super(key: key);

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
                'حدد سنة الانتاج ',
                style: TextStyle(fontFamily: FontConstants.fontFamily),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomeDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2),
                itemBuilder: (context, index) {
                  return YearProductionCarWidget();
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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

Widget YearProductionCarWidget() {
  return Container(
    alignment: Alignment.center,
    child: Text(
      '2023',
      style: TextStyle(
        color: AppColor.grey,
        fontSize: 18,
        fontFamily: FontConstants.fontFamily,
      ),
    ),
  );
}
