import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_textformfiled.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/widget/row_divider_widget.dart';
import 'package:haraj_app/shared/widget/social_container_widget.dart';
class TestStackImageScreen extends StatelessWidget {
  const TestStackImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Stack(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // SvgPicture.asset('assets/svg/background.svg',
                  //     fit: BoxFit.fill,
                  //     width: MediaQuery.of(context).size.width),
                  CustomSvgImage(imageName: "background",width: MediaQuery.of(context).size.width),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Container(
                          width: double.infinity,
                          child: Stack(
                            // alignment: Alignment.topLeft,
                            children: [
                              Center(
                                child: CustomSvgImage(
                                  imageName: AssetsImage.logo,
                                  height: 95,
                                  width: 131,
                                ),
                              ),
                              Positioned(
                                top: 5,
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: CustomSvgImage(
                                      imageName: AssetsImage.arrowIcon,
                                      width: 16,
                                      height: 16,
                                    )),
                              ),
                            ],
                          ),
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
                          height: 20,
                        ),
                        CustomTextFomField(
                          title: 'اعاد كتابة كلمة المرور ',
                          iconNamePuffix: AssetsImage.passwordIcon,
                          // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                          suffix: Icon(Icons.remove_red_eye),
                        ),
                        // SizedBox(
                        //   height: 30,
                        // ),
                        // AdButton(
                        //   text: 'انشاء حساب',
                        //   onPressed: () {
                        //     context.accountTypeSheet(context:context);
                        //     // Navigator.pushNamed(context,  AppRoutes.COMPLETE_PROFILE_BUYER);
                        //   },
                        // ),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 24),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'بالنقر على تسجيل الدخول ,فأنك توافق على ',
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              // color: mainFontColor,
                              fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                              text: '   الشروط و الاحكام و سياسة الخصوصية',
                              style: TextStyle(
                             //   color: mainColor,
                                fontSize: 14,
                                fontFamily: 'Avenir',
                              ),
                            ),
                            TextSpan(
                              text: 'الخاصة بنا ',
                              style: TextStyle(
                               // color: mainFontColor,
                                fontSize: 14,
                                fontFamily: 'Avenir',
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    RowDividerWidget(text: 'او'),
                    SizedBox(
                      height: 42,
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
