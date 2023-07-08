import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class EmptyGalleryImage extends StatelessWidget {
  const EmptyGalleryImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CustomSvgImage(
              imageName: AssetsImage.emptyImage,
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 25,
            ),
            CustomText(
              text: 'لا يوجد صور مضافة حاليا',
              fontSize: 16,
              color: AppColor.darkGreyColor,
            ),
          ],
        ),

    );
  }
}
