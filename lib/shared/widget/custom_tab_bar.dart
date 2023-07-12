import 'package:flutter/material.dart';

import '../components/custom_text.dart';
import '../style/color_manager.dart';
class SelectedContainer{
static  int selectedContainerIndex=0;

}
class CustomTabBar extends StatelessWidget {
  Function() onTap;
  String title;
  int index;
  double hPadding;


  CustomTabBar(this.onTap, this.title, this.index,this.hPadding);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: SelectedContainer.selectedContainerIndex == index
              ? AppColor.primary
              : Colors.transparent,
        ),
        padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: 10),
        margin: EdgeInsets.only(left: 10,),
        child: Center(
            child: CustomText(
          text: title,
          color:
          SelectedContainer.selectedContainerIndex == index ? AppColor.white : AppColor.grey,
              fontWeight: FontWeight.w500,
        )),
      ),
    );
  }
}
