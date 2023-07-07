import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
class RowDividerWidget extends StatelessWidget {
  const RowDividerWidget({Key? key}) : super(key: key);

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
        CustomText(text: 'او',fontWeight: FontWeight.w500,),
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
