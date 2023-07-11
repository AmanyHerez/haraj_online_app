import 'package:flutter/material.dart';

import '../style/color_manager.dart';
class CustomIconButtonOpenBottomSheet extends StatelessWidget {
  Widget widget;
  CustomIconButtonOpenBottomSheet(this.widget);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
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
      },
      icon: Icon(Icons.arrow_back_ios_new_outlined),
    );
  }
}
