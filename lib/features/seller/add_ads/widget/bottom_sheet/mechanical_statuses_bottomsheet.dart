import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/stander_cubit/general_cubit.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/style/color_manager.dart';
import '../../../../../app/auth_cubit/data/sp_helper.dart';
import '../../../../../app/stander_cubit/stander_cubit.dart';
import '../../../../../shared/components/custom_divider.dart';
import '../../../../../shared/components/custom_head_bottomsheet.dart';
import '../../../../../shared/components/custom_radio_list_tile.dart';

class MechanicalStatuesBottomSheet extends StatefulWidget {
  const MechanicalStatuesBottomSheet({Key? key}) : super(key: key);

  @override
  State<MechanicalStatuesBottomSheet> createState() =>
      _MechanicalStatuesBottomSheetState();
}

class _MechanicalStatuesBottomSheetState
    extends State<MechanicalStatuesBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final standerCubit = BlocProvider.of<StanderCubit>(context);
    final stringCubit = BlocProvider.of<StringCubit>(context);
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
              child: CustomText(
                text: 'حدد الحالة الميكانيكية للسيارة',
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomeDivider(),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return CustomeDivider();
                },
                itemCount:
                    StanderCubit.get(context).listMechanicalStatuses!.length,
                itemBuilder: (context, index) {
                  return MyRadioListTile<int>(
                    value:standerCubit
                            .listMechanicalStatuses![index]
                            .id ??
                        0,
                    groupValue: standerCubit.id_Vgroup_MechanicalStatuses,
                    leading:
                        '${standerCubit.listMechanicalStatuses![index].id ?? " "}',
                    title: CustomText(
                      text:
                          '${standerCubit.listMechanicalStatuses![index].name ?? " "}',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    onChanged: (value) {
                      setState(() {
                        standerCubit.id_Vgroup_MechanicalStatuses = value!;
                        SpHelper.spHelper.SaveValue(standerCubit
                                .listMechanicalStatuses![index]
                                .name ??
                            '');
                        SpHelper.spHelper.SaveIdBottom(
                            standerCubit.id_Vgroup_MechanicalStatuses);
                      });
                    },
                  );
                }),
            CustomeDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomElevatedButton(
                text: 'تم',
                onPressed: () {
                  StringCubit.get(context).getSelectedValue();
                  print("${stringCubit.select_value_MechanicalStatuses}");
                  Navigator.pop(context);
                },
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

// class TypeModelCarWidget extends StatefulWidget {
//   @override
//   State<TypeModelCarWidget> createState() => _TypeModelCarWidgetState();
//   int index;
//
//   String? text;
//   int? id;
//
//   TypeModelCarWidget(this.index, this.text, this.id);
// }
//
// class _TypeModelCarWidgetState extends State<TypeModelCarWidget> {
//   @override
//   Widget build(BuildContext context) {
//     // String selectedValue =' ';
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       child: Row(
//         children: [
//           CustomText(
//             text: widget.text ?? "Null",
//             fontWeight: FontWeight.w500,
//             fontSize: 15,
//           ),
//           Spacer(),
//           CustomRadioButton(
//               value: widget.id,
//               groupValue: StanderCubit.get(context).selectedValue,
//               onChanged: (value) {
//                 setState(() {
//                   StanderCubit.get(context).selectedValue = value!;
//
//                   print('onchage value in setstate $value');
//                   print(
//                       'selectedValue in setstate ${StanderCubit.get(context).selectedValue}');
//                 });
//                 // setState(() => selectedValue= value!);
//                 print('onchage value $value');
//                 print(
//                     'selectedValue ${StanderCubit.get(context).selectedValue}');
//               }),
//         ],
//       ),
//     );
//   }
// }

// CustomRadioButton(
// value: widget.index,
// groupValue:widget.value,
// onChanged: (value) {
// setState(() =>widget.value= value!);
// print('onchage value $value');
// print('index  ${widget.index}');
// print('${widget.value}');
//
// })

// CustomRadioButton(
// value: StanderCubit.get(context).listMechanicalStatuses![widget.index].name,
// groupValue:StanderCubit.get(context).selectedValue,
// onChanged: (value) {
// setState(() {
// StanderCubit.get(context).selectedValue= value!;
// print('onchage value in setstate $value');
// print('selectedValue in setstate ${StanderCubit.get(context).selectedValue}');
// });
// // setState(() => selectedValue= value!);
// print('onchage value $value');
// print('selectedValue ${StanderCubit.get(context).selectedValue}');
//
// }),
