import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haraj_app/route/routes.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_text_button.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custom_textformfiled.dart';
import '../../../shared/widget/row_divider_widget.dart';
import '../../../shared/widget/social_container_widget.dart';


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
              Stack(children: [
                CustomSvgImage(imageName: AssetsImage.background,width: MediaQuery.sizeOf(context).width,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      CustomSvgImage(
                        imageName: AssetsImage.logo,
                        height: 95,
                        width: 131,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomTextFomField(
                        title: ' البريد الالكتروني',
                        iconNamePuffix: AssetsImage.EmailIcon,
                        // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFomField(
                        title: 'كلمة المرور ',
                        iconNamePuffix: AssetsImage.passwordIcon,
                        // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                        suffix: Icon(Icons.remove_red_eye),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: CustomText(
                                text: 'هل نسيت كلمة المرور ؟',
                                color: AppColor.grey),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomElevatedButton(
                          text: 'تسجيل الدخول',
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.MAIN);
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextButton(
                          text: ' تسجيل جديد',
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.REGISTER);
                          }),

                    ],
                  ),
                ),
              ],),

              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'بالنقر على تسجيل الدخول ,فأنك توافق على',
                          style: TextStyle(
                              fontFamily: FontConstants.fontFamily,
                              color: AppColor.black,
                              fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' الشروط و الاحكام و سياسة الخصوصية',
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
                    RowDividerWidget(text: 'او'),
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
