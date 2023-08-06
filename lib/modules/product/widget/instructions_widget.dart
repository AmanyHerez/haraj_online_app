import 'package:flutter/material.dart';

import '../../../shared/components/custom_text.dart';
import '../../../shared/style/color_manager.dart';

class InstructionsWidget extends StatelessWidget {
  const InstructionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.white,
        border: Border.all(color: AppColor.containerGreyColor,width: .5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            BuildListInstruction(text:'لا تذهب الى مقابلة ساحب الحراج وحدك حاول اخذ اشخاص معك بينهم شخص خبير ', ),
            BuildListInstruction(text:'حاول ان تكون المقابلة في مكان عام منعا للاحتيال', ),
            BuildListInstruction(text:'دع اموالك امانه عند شخص امين قريب من المكان قبل المقابلة', ),
            BuildListInstruction(text:'في حال اعجبك الحراج لا تقم بدفع كامل قبل أتمام معاملة التسجيل', ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
Widget BuildListInstruction({required String text}){
  return  Row(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: AppColor.darkGreyColor,
          radius: 3,
        ),
      ),
      SizedBox(width: 10,),
      SizedBox(
        width: 300,
        child: CustomText(
          text:text,

          maxLines: 2,
          height: 2,
          color: AppColor.darkGreyColor,
        ),
      ),
    ],
  );
}
