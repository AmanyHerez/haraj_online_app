import 'package:flutter/material.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({
    Key? key,
    required this.isCurrentPage,
    this.marginEnd = 0,
  }) : super(key: key);

  final bool isCurrentPage;
  final double marginEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      height: 3,
      width: 74,
      decoration: BoxDecoration(
        color: isCurrentPage ? AppColor.green : AppColor.grey,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
