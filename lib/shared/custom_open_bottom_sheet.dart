import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class CustomOpenBottomSheet{
  static openBottomSheet(BuildContext context,Widget widget){
    return showModalBottomSheet(
      context: context,
      // elevation: 10,
      enableDrag: true,
      isDismissible: false,
      barrierColor: AppColor.lightGrey,
      shape: RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return widget;
      },
    );
  }
}