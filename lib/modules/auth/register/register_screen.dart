import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haraj_app/app/test_register/cubit/auth_cubit/auth_cubit.dart';
import 'package:haraj_app/route/routes.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/custom_open_bottom_sheet.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/components/custom_textformfiled.dart';
import '../../../shared/widget/row_divider_widget.dart';
import '../../../shared/widget/social_container_widget.dart';
import '../type_account/type_account_screen.dart';

class RegisterScreen extends StatelessWidget {

  var confirmPass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: BlocProvider.of<AuthCubit>(context).registerKey,
          child: Column(
            children: [
              Stack(
                children: [
                  CustomSvgImage(
                    imageName: AssetsImage.background,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
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
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextFomField(
                          title: ' البريد الالكتروني',
                          iconNamePuffix: AssetsImage.EmailIcon,
                          controller: BlocProvider.of<AuthCubit>(context).emailRegController,
                          textInputType: TextInputType.emailAddress,
                          validator: (String value){},

                          // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFomField(
                          title: 'كلمة المرور ',
                          controller: BlocProvider.of<AuthCubit>(context).passwordRegController,
                          iconNamePuffix: AssetsImage.passwordIcon,
                          validator: (String value) {
                            confirmPass = value;
                            if (value.isEmpty) {
                              return "Please Enter New Password";
                            } else if (value.length < 8) {
                              return "Password must be atleast 8 characters long";
                            } else {
                              return null;
                            }
                          },
                          // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                          suffix: Icon(Icons.remove_red_eye),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFomField(
                          title: 'اعاد كتابة كلمة المرور ',
                          iconNamePuffix: AssetsImage.passwordIcon,
                          controller: BlocProvider.of<AuthCubit>(context).confirmePassController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Please Re-Enter New Password";
                            } else if (value.length < 8) {
                              return "Password must be atleast 8 characters long";
                            } else if (value != confirmPass) {
                              return "Password must be same as above";
                            } else {
                              return null;
                            }
                          },
                          // errorTitle: 'الرجاء ادخال البريد الالكتروني',
                          suffix: Icon(Icons.remove_red_eye),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomElevatedButton(
                            text: 'انشاء حساب',
                            onPressed: () {
                              // BlocProvider.of<RegisterCubit>(context)
                              //     .registerKey.currentState!.save();
                              CustomOpenBottomSheet.openBottomSheet(
                                  context, TypeAccountScreen());



                            }),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
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
                    const SizedBox(
                      height: 20,
                    ),
                    RowDividerWidget(text: 'او'),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialContainer(nameIcon: AssetsImage.twiterIcon),
                        SocialContainer(nameIcon: AssetsImage.facebookIcon),
                        SocialContainer(nameIcon: AssetsImage.googleIcon),
                      ],
                    ),
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
