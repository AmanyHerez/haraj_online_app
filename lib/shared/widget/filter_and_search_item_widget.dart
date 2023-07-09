import 'package:flutter/material.dart';

import '../components/custome_image.dart';
import '../font_manager.dart';
import '../style/color_manager.dart';

class FilterAndSearchItemWidget extends StatelessWidget {
  String iconName;
  String title;
  Widget widget;

  FilterAndSearchItemWidget({
    required this.iconName,
    required this.title,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: AppColor.dividerGreyColor,
          )),
      child: Row(
        children: [
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
              color: AppColor.dividerGreyColor,
            ))),
            child: CustomSvgImage(imageName: iconName),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: FontConstants.fontFamily, color: AppColor.grey),
          ),
          Spacer(),
          IconButton(
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
          ),
        ],
      ),
    );
  }
}
