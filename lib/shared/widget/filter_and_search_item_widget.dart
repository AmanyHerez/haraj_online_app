import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/custom_open_bottom_sheet.dart';

import '../components/custome_image.dart';
import '../font_manager.dart';
import '../style/color_manager.dart';

class FilterAndSearchItemWidget extends StatelessWidget {
  String iconName;
  String title;
  String leading;
  Widget widget;
  bool isvisble;

  FilterAndSearchItemWidget(
      {required this.iconName,
      required this.title,
      required this.leading,
      required this.widget,
      this.isvisble=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 60,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: .5,
          color: AppColor.containerBorderColor,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 48,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: AppColor.containerBorderColor,
                ),
              ),
            ),
            child: CustomSvgImage(
              imageName: iconName,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: isvisble
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: FontConstants.fontFamily, color: AppColor.grey),
              ),
              SizedBox(
                width: 220,
                child: Visibility(
                    visible: isvisble,
                    child:
                    CustomText(
                      text: leading,
                      fontWeight: FontWeight.w500,
                      maxLines: 2,
                    ),
                ),
              )
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              CustomOpenBottomSheet.openBottomSheet(context, widget);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined, size: 16),
          ),
        ],
      ),
    );
  }
}
