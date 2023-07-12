import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_elevated_button.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/font_manager.dart';

class OTPFirstScreen extends StatelessWidget {
  const OTPFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 460,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/${AssetsImage.background}.png",
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: CustomSvgImage(
                              imageName: AssetsImage.arrowIcon,
                              width: 16,
                              height: 16,
                            )),
                      ],
                    ),
                    CustomSvgImage(
                      imageName: AssetsImage.logo,
                      height: 110,
                      width: 151,
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return BuildOtpItem();
                        },
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    CustomElevatedButton(
                        text: 'تحقيق',
                        onPressed: () {
                          // Navigator.pushNamed(context, AppRoutes.HOME);
                        }),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: '1:03',
                          color: AppColor.grey,
                        ),
                        CustomText(
                          text: 'اعادة الارسال',
                          color: AppColor.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 50),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text:
                            'لقد أرسلنا إليك رسالة نصية قصيرة تحتوي على رمز التحقق إلى بريدك الاكتروني',
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          fontFamily: FontConstants.fontFamily,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Mona _Fadl1233@gmail.com',
                            style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              fontFamily: FontConstants.fontFamily,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget BuildOtpItem() {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: Color(0xFFEAF2F2),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
