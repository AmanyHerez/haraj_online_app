import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_textformfiled.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/components/custom_divider.dart';
import '../../../shared/components/custom_head_bottomsheet.dart';

class SelectCityBottomSheet extends StatelessWidget {
  const SelectCityBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeadBottomSheet(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'حدد المدينة',
                style: TextStyle(fontFamily: FontConstants.fontFamily),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomeDivider(),
            CustomTextFomField(
              title: 'ابحث عن اسم المدينة',
              validator: (){},
              iconNamePuffix: AssetsImage.searchIcon,
              fillColor: Color(0xFFF9F9F9),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            CustomeDivider(),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return SelectCityWidget();
                },
                separatorBuilder: (context, index) {
                  return CustomeDivider();
                },
                itemCount: 7),
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
class SelectCityWidget extends StatefulWidget {
  @override
  State<SelectCityWidget> createState() => _SelectCityWidgetState();
}

class _SelectCityWidgetState extends State<SelectCityWidget> {
  bool value=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Text(
            'الباهية',
            style: TextStyle(fontFamily: FontConstants.fontFamily),
          ),
          Spacer(),
          InkWell(
            onTap: (){
              setState(() {
                value = !value;
              });
            },
            child: Container(
              height: 18,
              width: 18,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:value? AppColor.primary:AppColor.Lightprimary,
                borderRadius: BorderRadius.circular(25),
              ),
              child:value? Icon(
                Icons.check,
                color: AppColor.white,
                size: 16,
              ):null,
            ),
          ),
        ],
      ),
    );
  }
}


