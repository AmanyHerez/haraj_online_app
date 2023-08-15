import 'package:flutter/material.dart';

import '../../../shared/components/custom_text.dart';
import '../../../shared/style/color_manager.dart';
class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
    required this.isMe,
    required this.message,
    required this.date,
    required this.isSent,
  }) : super(key: key);
  final bool isMe;
  final String message;
  final String date;
  final bool isSent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:isSent
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        Radio(
          fillColor: MaterialStateColor.resolveWith(
                  (states) => AppColor.primary),
          value: '',
          groupValue: 'trade',
          onChanged: (value) {},
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: AppColor.messagecolor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: CustomText(
            text: 'السلام عليكم ورحمة الله وبركاته',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}