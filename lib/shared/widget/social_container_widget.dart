import 'package:flutter/material.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../components/custome_image.dart';

class SocialContainer extends StatelessWidget {
  String nameIcon;

  SocialContainer({required this.nameIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15,right: 15),
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
              color: AppColor.lightGrey, //New
              blurRadius: 5.0,
              offset: Offset(1, 1))
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: CustomSvgImage(
          imageName: nameIcon,
          width: 22,
          height: 22,
        ),
      ),
    );
  }
}
