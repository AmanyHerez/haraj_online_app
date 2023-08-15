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
    return 
       SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CustomSvgImage(
                  imageName: AssetsImage.tabBarbackground,
                  width: MediaQuery.sizeOf(context).width,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                      child: CustomText(
                    text: 'الدردشة',
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  CustomTextFomField(
                    title: 'ابحث عن المحادثة',
                    fillColor: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    iconNamePuffix: AssetsImage.searchIcon,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: .5,
                    ),
                    radius: 10,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  RowDividerWidget(text: '030 دردشة'),
                  SizedBox(
                    height: 16,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    enabled: true,
                    child:
                   enabled ?
                    ListView.separated(
                      itemCount: 3,
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: AppColor.containerBorderColor,
                          height: 40,
                          thickness: 1,
                          indent: 10,
                          endIndent: 10,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Row(
                          children: [

                            Container(
                              width:50,
                              height: 50,
                              decoration: BoxDecoration(shape: BoxShape.circle,  color: AppColor.white,),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:280,
                                  height: 20,
                                  decoration: BoxDecoration(  color: AppColor.white,borderRadius: BorderRadius.circular(6)),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  width:240,
                                  height: 20,
                                  decoration: BoxDecoration(color: AppColor.white,borderRadius: BorderRadius.circular(6)),
                                 ),

                              ],
                            )
                          ],
                        );
                      },
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    )
                        : NoDataWidget(message: 'No message'),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
