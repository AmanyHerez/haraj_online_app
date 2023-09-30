import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../app/stander_cubit/stander_cubit.dart';
import '../../../shared/components/custom_divider.dart';
import '../../../shared/components/custom_head_bottomsheet.dart';

class TypeFuelBottomSheet extends StatelessWidget {
  const TypeFuelBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var model=StanderCubit.get(context).fuelsModel;
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
              child: Text(
                'حدد نوع الوقود ',
                style: TextStyle(fontFamily: FontConstants.fontFamily),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomeDivider(),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return TypeFuelCarWidget(model.data![index].name);
                },
                separatorBuilder: (context, index) {
                  return CustomeDivider();
                },
                itemCount: model!.data!.length),
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

Widget TypeFuelCarWidget(String? text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
      children: [
        Text(
          text ?? "Null",
          style: TextStyle(fontFamily: FontConstants.fontFamily),
        ),
        Spacer(),
        Icon(
          Icons.check,
          color: AppColor.primary,
          size: 16,
        ),
      ],
    ),
  );
}
