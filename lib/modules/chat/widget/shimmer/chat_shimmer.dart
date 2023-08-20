import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../shared/assets_manager.dart';
import '../../../../shared/components/custom_cached_network_image.dart';
import '../../../../shared/components/custom_text.dart';
import '../../../../shared/components/custom_textformfiled.dart';
import '../../../../shared/components/custome_image.dart';
import '../../../../shared/style/color_manager.dart';
import '../../../../shared/widget/row_divider_widget.dart';
import '../no_data_widget.dart';

class ChatShimmer extends StatelessWidget {
  const ChatShimmer({
    required this.enabled,
    Key? key,
  }) : super(key: key);
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade200,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: enabled
          ? ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 250,
                            height: 24,
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 220,
                            height: 20,
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            )
          : NoDataWidget(message: 'No Chats'),
    );
  }
}
