import 'package:flutter/material.dart';

import '../assets_manager.dart';
import '../style/color_manager.dart';
import 'custome_image.dart';
class CustomHeadBottomSheet extends StatelessWidget {
  const CustomHeadBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Spacer(
          flex: 3,
        ),
        Container(
          width: 52,
          height: 8,
          decoration: BoxDecoration(
            color: AppColor.greyContainerBottomSheet,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Spacer(
          flex: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: CustomSvgImage(imageName: AssetsImage.cancel)),
        ),
      ],
    );
  }
}
