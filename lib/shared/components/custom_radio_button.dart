import 'package:flutter/material.dart';

import '../style/color_manager.dart';

class CustomRadioButton<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;

  CustomRadioButton({
   required  this.value,
   required  this.groupValue,
   required  this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final bool selected = value == groupValue;
    print('/////////////////////////////');
    print('value is $value');
    print('groupValue is $groupValue');
    print('selected is $selected');
    print('/////////////////////////////');
    return InkWell(
      onTap: () => onChanged(value),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 16,
          height: 16,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color:selected?AppColor.primary: AppColor.lightGrey,
          ),
          child:selected? Icon(
            Icons.check_sharp,
            color: Colors.white,
            size: 12,
          ):null
        ),
      ),
    );
  }
}
