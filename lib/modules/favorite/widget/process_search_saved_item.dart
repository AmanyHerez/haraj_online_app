import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_show_dialog.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class ProcessSearchSavedItem extends StatelessWidget {
  const ProcessSearchSavedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,

      margin: EdgeInsets.only(bottom:16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.white,
          border: Border.all(
            color: AppColor.containerBorderColor,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: AppColor.containerBorderColor,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.primary,
                ),
                child: CustomSvgImage(
                  imageName: AssetsImage.search,
                  width: 11,
                  height: 11,
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'توسان اكسنت 2022'),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    CustomText(
                      text: '50 ',
                      color: AppColor.darkprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: ' نتيجة',
                      color: AppColor.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Container(
              width: 40,
              height: 40,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: AppColor.containerGreyColor,
                ),
              ),
              child: InkWell(
                onTap: (){
                  CustomDialog.customShowDialogFunction(context, 'هل انت متاكد من انك تريد حذف الاعلان ؟ ',AssetsImage.deleteIcon);
                },
                child: Icon(
                  Icons.favorite,
                  color: AppColor.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
