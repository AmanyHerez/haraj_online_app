import 'package:flutter/material.dart';

import '../../../../shared/assets_manager.dart';
import '../../../../shared/components/custom_divider.dart';
import '../../../../shared/components/custom_show_dialog.dart';
import '../../../../shared/components/custom_text.dart';
import '../../../../shared/components/custome_image.dart';
import '../../../../shared/custom_open_bottom_sheet.dart';
import '../../../../shared/custom_shape.dart';
import '../../../../shared/style/color_manager.dart';
import 'bottom_sheet/edit_offer_befor_send.dart';
class OfferRejectListViewItem extends StatefulWidget {
  const OfferRejectListViewItem({Key? key}) : super(key: key);

  @override
  State<OfferRejectListViewItem> createState() => _OfferRejectListViewItemState();
}

class _OfferRejectListViewItemState extends State<OfferRejectListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.white,
        border: Border.all(color: AppColor.containerBorderColor),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 140,


            child: Stack(
              children: [
                ClipPath(
                  clipper: RPSCustomPainter(),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1629421865882-d64347f3961c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Ymx1ZSUyMGNhcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
                    height: 154,
                    fit: BoxFit.fill,
                    width: 140,
                  ),
                ),
                PositionedDirectional(
                    bottom: 4,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      padding: EdgeInsets.symmetric(horizontal: 6,vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomSvgImage(
                            imageName: AssetsImage.locationIcon,
                            width: 10,
                            height: 14,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomText(
                            text: 'ابوظبي',
                            fontSize: 12,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'توسان اكسنت 2023',
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    InkWell(
                        onTap:  _show,
                        child: Icon(Icons.more_vert)),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    CustomText(
                        text: 'السعر المقدم :',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: AppColor.grey),
                    CustomText(
                      text: ' 40000',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    CustomText(
                      text: '  5000000',
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: AppColor.grey,
                      underline: TextDecoration.lineThrough,
                    ),
                    CustomText(
                        text: 'درهم',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    CustomText(
                        text: 'الحالة الطلب :',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: AppColor.grey),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColor.lightprimary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: CustomText(
                        text: 'مرفوض',
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: AppColor.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomeDivider(),
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColor.container_color,
                      ),
                      child: CustomSvgImage(
                        imageName: AssetsImage.OBJECTS,
                        width: 21,
                        height: 21,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      text: 'معرض النور لبيع وشراء السيارات',
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColor.white,
          title: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  CustomOpenBottomSheet.openBottomSheet(context, EditOfferBeforSendBottomSheet());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  child: Row(
                    children: [
                      CustomSvgImage(
                          imageName:
                          AssetsImage.returnSend),
                      SizedBox(
                        width: 12,
                      ),
                      CustomText(
                        text: 'اعادة الارسال',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ],
                  ),
                ),
              ),
              CustomeDivider(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  CustomDialog.customShowDialogFunction(
                      context,
                      'هل انت متاكد من انك تريد حذف العرض ؟ ',
                      AssetsImage.deleteIcon);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  child: Row(
                    children: [
                      CustomSvgImage(
                          imageName:
                          AssetsImage.removeIcon),
                      SizedBox(
                        width: 12,
                      ),
                      CustomText(
                        text: 'حذف',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ],
                  ),
                ),
              ),

              CustomeDivider(),
              SizedBox(
                height: 12,
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          titlePadding: EdgeInsets.zero,

        );
      },
    );
  }
}
