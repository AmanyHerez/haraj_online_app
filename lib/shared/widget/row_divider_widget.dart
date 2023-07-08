import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
class RowDividerWidget extends StatelessWidget {
 String text;
 Color? color;


 RowDividerWidget({required this.text,this.color});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: CustomeDivider(),
        ),
        SizedBox(
          width: 5,
        ),
        CustomText(text: text,fontWeight: FontWeight.w500,color: color,),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child:CustomeDivider(),
        ),
      ],
    );
  }
}
