import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/style/color_manager.dart';
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

  }
}

