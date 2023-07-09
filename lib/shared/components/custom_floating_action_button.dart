import 'package:flutter/material.dart';

import '../assets_manager.dart';
import '../style/color_manager.dart';
import 'custom_elevated_button_icon_text.dart';
class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomElevatedButtonRowIconText(
          onPressed: () {},
          text: 'حفظ النتائج',
          imageName: AssetsImage.favoriteIcon,
          width: 200,
          bgColor: AppColor.white,
          bordercolor: AppColor.primary,
          colorText: AppColor.primary,
          IconColor: AppColor.primary,
        ),
      ],
    );
  }
}
