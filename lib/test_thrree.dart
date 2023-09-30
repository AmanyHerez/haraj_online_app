import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import 'app/stander_cubit/stander_cubit.dart';
class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final Widget? title;
  final ValueChanged<T?> onChanged;

  const MyRadioListTile({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 56,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            if (title != null) title,
            Spacer(),
            _customRadioButton,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
        width: 16,
        height: 16,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color:isSelected?AppColor.primary: AppColor.lightGrey,
        ),
        child:isSelected? Icon(
          Icons.check_sharp,
          color: Colors.white,
          size: 12,
        ):null
    );
    //   Container(
    //   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    //   decoration: BoxDecoration(
    //     color: isSelected ? Colors.blue : null,
    //     borderRadius: BorderRadius.circular(4),
    //     border: Border.all(
    //       color: isSelected ? Colors.blue : Colors.grey[300]!,
    //       width: 2,
    //     ),
    //   ),
    //   child: Text(
    //     leading,
    //     style: TextStyle(
    //       color: isSelected ? Colors.white : Colors.grey[600]!,
    //       fontWeight: FontWeight.bold,
    //       fontSize: 14,
    //     ),
    //   ),
    // );
  }
}

class testingRadio extends StatefulWidget {
  const testingRadio({Key? key}) : super(key: key);

  @override
  State<testingRadio> createState() => _testingRadioState();
}

class _testingRadioState extends State<testingRadio> {
  @override

  int _value_group = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: StanderCubit.get(context).listMechanicalStatuses!.length,
            itemBuilder: (context, index) {
            return  MyRadioListTile<int>(
              value: StanderCubit.get(context).listMechanicalStatuses![index].id ?? 0,
              groupValue: _value_group,
              leading: '${StanderCubit.get(context).listMechanicalStatuses![index].id?? " "}',
              title: CustomText(
                text: '${StanderCubit.get(context).listMechanicalStatuses![index].name?? " "}',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              onChanged: (value) => setState(() => _value_group = value!),
            );
          },)
        ],
      ),
    );
  }
}
