import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';

import '../../../shared/components/custom_divider.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/style/color_manager.dart';

class ShareAppDottomSheet extends StatelessWidget {
  const ShareAppDottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(12),
                width: 30,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.containerGreyColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: AppColor.primary,
                  ),
                  padding: EdgeInsets.all(0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(
                text: ' مشاركة التطبيق ',
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomeDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: AppColor.dividerGreyColor,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                            color: AppColor.dividerGreyColor,
                          ))),
                          child: Icon(
                            Icons.copy,
                            color: AppColor.primary,
                          ),
                        ),
                        Spacer(),
                        CustomText(
                          text: 'https\\harag application\mohamed143',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      SocialItem(
                        AppColor.blue,
                        AssetsImage.telegram,
                      ),
                      SocialItem(
                          AppColor.greenWhatsup, AssetsImage.whatsappIcon,
                          colorImage: AppColor.white),
                      SocialItem(AppColor.pink, AssetsImage.instagramIcon,
                          colorImage: AppColor.white),
                      SocialItem(
                          AppColor.colorfacebook, AssetsImage.facebookIcon,
                          colorImage: AppColor.white),
                      SocialItem(AppColor.blue, AssetsImage.twiterIcon,
                          colorImage: AppColor.white),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      SocialItem(
                        AppColor.blue,
                        AssetsImage.telegram,
                      ),
                      SocialItem(
                          AppColor.greenWhatsup, AssetsImage.whatsappIcon,
                          colorImage: AppColor.white),
                      SocialItem(AppColor.pink, AssetsImage.instagramIcon,
                          colorImage: AppColor.white),
                      SocialItem(
                          AppColor.colorfacebook, AssetsImage.facebookIcon,
                          colorImage: AppColor.white),
                      SocialItem(AppColor.blue, AssetsImage.twiterIcon,
                          colorImage: AppColor.white),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget SocialItem(Color color, String imageName, {Color? colorImage}) {
    return Container(
      width: 58,
      height: 58,
      margin: EdgeInsets.only(left: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      child: CustomSvgImage(
        imageName: imageName,
        color: colorImage,
      ),
    );
  }
}
