import 'package:flutter/material.dart';
import 'package:haraj_app/route/routes.dart';
import 'package:haraj_app/shared/components/custom_text_button.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_elevated_button.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/style/color_manager.dart';

class OTPAfterWritingScreen extends StatelessWidget {
  const OTPAfterWritingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 480,
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
                        },
                      bgColor: AppColor.primary,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        CustomTextButton(
                            text: 'اعادة الارسال',
                            onPressed: () {
                              Navigator.pushNamed(context, AppRoutes.OTP);
                            })
                      ],
                    ),
                  ],
                ),
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
      child: Center(
        child: CustomText(
          text: '6',
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
