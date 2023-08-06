import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:haraj_app/modules/profile/setting/widget/bottom_sheet/ceate_password_bottom_sheet.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/custom_open_bottom_sheet.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custom_textformfiled.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/style/color_manager.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isExpanded = false;
  final _controller09 = ValueNotifier<bool>(true);
  static const loremIpsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(children: [
              CustomSvgImage(imageName: AssetsImage.tabBarbackground,width: MediaQuery.sizeOf(context).width,),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CustomSvgImage(
                          imageName: AssetsImage.arrowIcon,
                          width: 8,
                          height: 13,
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomText(
                      text: 'صفحة الاعدادات',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],),

            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20,),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        // height: 400,
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(12),

                          border: Border.all(color: AppColor.containerGreyColor,width: .5),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'معلومات الحساب',
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: AppColor.grey,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              ExpandableNotifier(
                                child: ScrollOnExpand(
                                  scrollOnExpand: true,
                                  scrollOnCollapse: false,
                                  child: ExpandablePanel(
                                    theme: const ExpandableThemeData(
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      tapBodyToCollapse: true,
                                    ),
                                    header: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            CustomText(
                                              text: "تغير البريد الاكتروني",
                                            ),
                                            Spacer(),
                                            CustomText(
                                              text: "Mona Fadl@gmail.com",
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: AppColor.primary,
                                            ),
                                          ],
                                        )),
                                    collapsed: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14),
                                      child: CustomeDivider(),
                                    ),
                                    expanded: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          CustomeDivider(),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          CustomText(
                                            text:
                                                'سوف نرسل الى رقمك رسالة نصية تحتوي كود تحقيق عليك أدخالها حتى تتمكن من تغيير رقمك',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                          ),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          CustomElevatedButton(
                                            text: 'ارسال',
                                            onPressed: () {},
                                            bgColor: AppColor.primary,
                                          ),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          CustomeDivider(),
                                        ],
                                      ),
                                    ),
                                    builder: (_, collapsed, expanded) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10, bottom: 10),
                                        child: Expandable(
                                          collapsed: collapsed,
                                          expanded: expanded,
                                          theme: const ExpandableThemeData(
                                              crossFadePoint: 0),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              ExpandableNotifier(
                                child: ScrollOnExpand(
                                  scrollOnExpand: true,
                                  scrollOnCollapse: false,
                                  child: ExpandablePanel(
                                    theme: const ExpandableThemeData(
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      tapBodyToCollapse: true,
                                    ),
                                    header: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            CustomText(
                                              text: "تغيير اللغة",
                                            ),
                                            Spacer(),
                                            CustomText(
                                              text: 'العربية',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: AppColor.primary,
                                            ),
                                          ],
                                        )),
                                    collapsed: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: CustomeDivider(),
                                    ),
                                    expanded: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          CustomeDivider(),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: AppColor.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16,
                                                    vertical: 12),
                                                child: CustomText(
                                                  text: 'العربية',
                                                  color: AppColor.white,
                                                ),
                                              ),
                                              SizedBox(width: 12,),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: AppColor.white,
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                  border: Border.all(color: AppColor.container_color),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16,
                                                    vertical: 12),
                                                child: CustomText(
                                                  text: 'English',
                                                  color: AppColor.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          CustomElevatedButton(
                                            text: 'تغيير',
                                            onPressed: () {},
                                            bgColor: AppColor.primary,
                                          ),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          CustomeDivider(),
                                        ],
                                      ),
                                    ),
                                    builder: (_, collapsed, expanded) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10, bottom: 10),
                                        child: Expandable(
                                          collapsed: collapsed,
                                          expanded: expanded,
                                          theme: const ExpandableThemeData(
                                              crossFadePoint: 0),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              ExpandableNotifier(
                                child: ScrollOnExpand(
                                  scrollOnExpand: true,
                                  scrollOnCollapse: false,
                                  child: ExpandablePanel(
                                    theme: const ExpandableThemeData(
                                      headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                      tapBodyToCollapse: true,
                                    ),
                                    header: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            CustomText(
                                              text: "تغيير كلمة المرور",
                                            ),
                                            Spacer(),
                                            CustomText(
                                              text: '***********',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: AppColor.primary,
                                            ),
                                          ],
                                        )),
                                    collapsed: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: CustomeDivider(),
                                    ),
                                    expanded: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          CustomeDivider(),
                                          SizedBox(
                                            height: 16,
                                          ),
                                     CustomText(text: 'تم بادخال كلمة المرور الحالية',fontWeight: FontWeight.w300,fontSize: 12,),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          CustomTextFomField(
                                            title: 'كلمة المرور  الحالية',
                                            iconNamePuffix: AssetsImage.passwordIcon,

                                            suffix: Icon(Icons.remove_red_eye),
                                            fillColor:AppColor.Grey3,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                            TextButton(onPressed: (){
                                              CustomOpenBottomSheet.openBottomSheet(context, CreatePasswordBottomSheet());
                                            }, child: CustomText(text: 'هل نسيت كلمة المرور ؟',color: AppColor.primary,)),
                                          ],),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          CustomElevatedButton(
                                            text: 'تغيير',
                                            onPressed: () {},
                                            bgColor: AppColor.primary,
                                          ),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          CustomeDivider(),
                                        ],
                                      ),
                                    ),
                                    builder: (_, collapsed, expanded) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10, bottom: 10),
                                        child: Expandable(
                                          collapsed: collapsed,
                                          expanded: expanded,
                                          theme: const ExpandableThemeData(
                                              crossFadePoint: 0),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: double.infinity,

                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.white,
                          border:
                              Border.all(color: AppColor.containerBorderColor,width: .5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'المزيد',
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: AppColor.grey,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  CustomText(text: 'أيقاف الاشعارات'),
                                  Spacer(),
                                  AdvancedSwitch(
                                    width: 56,
                                    height: 28,
                                    controller: _controller09,
                                    activeColor: AppColor.switch_active_color,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              CustomeDivider(),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  CustomText(text: 'الوضع الداكن'),
                                  Spacer(),
                                  AdvancedSwitch(
                                    width: 56,
                                    height: 28,
                                    controller: _controller09,
                                    activeColor: AppColor.switch_active_color,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CustomeDivider(),
                              SizedBox(
                                height: 24,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: 'ترقية التطبيق ',
                                    color: AppColor.grey,
                                  ),
                                  Spacer(),
                                  CustomText(
                                    text: 'انت تمتلك احدث اصدار 1.1.1',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0x66AB1216),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CustomeDivider(),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
