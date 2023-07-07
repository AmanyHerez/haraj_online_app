import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../shared/components/custom_textformfiled.dart';
import '../../shared/widget/row_divider_widget.dart';
import '../../shared/widget/social_container_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Container(
                width: double.infinity,
                height: 540,
                decoration: BoxDecoration(
                  color: AppColor.grey,
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
                      SizedBox(
                        height: 60,
                      ),
                      CustomSvgImage(
                        imageName: AssetsImage.logo,
                        height: 95,
                        width: 131,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomTextFomField(
                        title: ' البريد الالكتروني',
                        iconNamePuffix: AssetsImage.EmailIcon,
                        // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextFomField(
                        title: 'كلمة المرور ',
                        iconNamePuffix: AssetsImage.passwordIcon,
                        // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                        suffix: Icon(Icons.remove_red_eye),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'هل نسيت كلمة المرور ؟',
                            style: TextStyle(color: AppColor.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomElevatedButton(text: 'تسجيل الدخول', onPressed: () {}),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        ' تسجيل جديد',
                        style: TextStyle(color: AppColor.primary),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'بالنقر على تسجيل الدخول ,فأنك توافق على ',
                          style: TextStyle(
                              fontFamily: FontConstants.fontFamily,
                              color: AppColor.black,
                              fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                              text: '   الشروط و الاحكام و سياسة الخصوصية',
                              style: TextStyle(
                                color: AppColor.primary,
                                fontSize: 14,
                                fontFamily: FontConstants.fontFamily,
                              ),
                            ),
                            TextSpan(
                              text: 'الخاصة بنا ',
                              style: TextStyle(
                                color: AppColor.black,
                                fontSize: 14,
                                fontFamily: FontConstants.fontFamily,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RowDividerWidget(),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialContainer(nameIcon: AssetsImage.twiterIcon),
                        SocialContainer(nameIcon: AssetsImage.facebookIcon),
                        SocialContainer(nameIcon: AssetsImage.googleIcon),

                      ],
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

