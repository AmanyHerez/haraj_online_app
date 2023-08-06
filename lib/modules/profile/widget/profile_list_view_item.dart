import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_text_button.dart';
import 'package:haraj_app/shared/components/custome_image.dart';

import '../../../shared/components/custom_text.dart';
import '../../../shared/style/color_manager.dart';

class ProfileListViewItem extends StatelessWidget {
  String imageName;
  String text;
  Function() onPressed;

  ProfileListViewItem({
    required this.imageName,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              CustomSvgImage(imageName: imageName,width: 24,height: 24,),
              SizedBox(
                width: 12,
              ),
              CustomText(text: text),
              Spacer(),

              IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 14,
                  color: AppColor.grey,
                ),
              ),
            ],
          ),
        ),

        CustomeDivider(),
      ],
    );
  }
}
