import 'package:flutter/material.dart';

import '../style/color_manager.dart';
class CustomeDivider extends StatelessWidget {
  const CustomeDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: AppColor.dividerGreyColor,
      thickness: 1,
    );
  }
}
