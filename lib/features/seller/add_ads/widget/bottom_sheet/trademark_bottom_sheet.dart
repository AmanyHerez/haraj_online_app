import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../../../shared/components/custom_cached_network_image.dart';
import '../../../../../shared/components/custom_divider.dart';
import '../../../../../shared/components/custom_head_bottomsheet.dart';
import '../../../../../shared/components/custom_radio_button.dart';



class TeadeMarkBottomSheet extends StatelessWidget {
  const TeadeMarkBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            CustomHeadBottomSheet(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:CustomText(text:  'حدد العلامة التجارية',fontSize: 16,),

            ),
            SizedBox(
              height: 16,
            ),
            CustomeDivider(),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return TypeModelCarWidget(index+1);
                },
                separatorBuilder: (context, index) {
                  return CustomeDivider();
                },
                itemCount: 4),
            CustomeDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomElevatedButton(
                text: 'تم',
                onPressed: () {},
                bgColor: AppColor.primary,
                colorText: AppColor.white,
                Radius: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TypeModelCarWidget extends StatefulWidget {


  @override
  State<TypeModelCarWidget> createState() => _TypeModelCarWidgetState();
  int index;
  int value = 1;
  TypeModelCarWidget(this.index);
}

class _TypeModelCarWidgetState extends State<TypeModelCarWidget> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          CustomCachedNetworkImage(
            imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Mercedes-Logo.svg/2048px-Mercedes-Logo.svg.png',
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'مرسيدس',
            style: TextStyle(fontFamily: FontConstants.fontFamily),
          ),
          Spacer(),
          CustomRadioButton(
              value: widget.index,
              groupValue:widget.value,
              onChanged: (value) {
                setState(() =>widget.value= value!);
                 print('onchage value $value');
                 print('index  ${widget.index}');
                 print('${widget.value}');

              }),
        ],
      ),
    );
  }
}


