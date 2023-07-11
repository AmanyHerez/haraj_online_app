import 'package:flutter/material.dart';
import 'package:haraj_app/modules/profile/bottom_sheet/share_app_bottom_sheet.dart';
import 'package:haraj_app/modules/profile/widget/profile_list_view_item.dart';
import 'package:haraj_app/route/routes.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_elevated_button_icon_text.dart';

import '../../shared/assets_manager.dart';
import '../../shared/components/custom_show_dialog.dart';
import '../../shared/components/custom_text.dart';
import '../../shared/components/custom_text_button.dart';
import '../../shared/components/custome_image.dart';
import '../../shared/custom_open_bottom_sheet.dart';
import '../../shared/style/color_manager.dart';
import 'bottom_sheet/contact_me_bottom_sheet.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 410,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/${AssetsImage.background}.png",
                  ),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      CustomText(
                        text: ' بياناتي',
                        fontSize: 16,
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 21),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CustomSvgImage(
                            imageName: AssetsImage.editIcon,
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(75),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/${AssetsImage.car}.png",
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomText(
                    text: 'د.محمد محمد',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.email,
                            color: AppColor.grey,
                            size: 30,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          CustomText(
                            text: 'Mona Fadl@gmail.com',
                            color: AppColor.grey,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        color: AppColor.primary,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.phone_android_sharp,
                            color: AppColor.grey,
                            size: 30,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          CustomText(
                            text: '+966 5211043',
                            color: AppColor.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                children: [
                  ProfileListViewItem(
                      imageName: AssetsImage.offerIcon,
                      text: 'العروض المقدمة',
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.OFFER_SUBMITTED);
                      }),
                  ProfileListViewItem(
                      imageName: AssetsImage.offerIcon,
                      text: 'من نحن',
                      onPressed: () {}),
                  ProfileListViewItem(
                      imageName: AssetsImage.aboutIcon,
                      text: 'حول التطبيق',
                      onPressed: () {}),
                  ProfileListViewItem(
                      imageName: AssetsImage.connectionIcon,
                      text: 'تواصل معنا',
                      onPressed: () {
                        CustomOpenBottomSheet.openBottomSheet(context, ContactMeBottomSheet());
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileListViewItem(
                      imageName: AssetsImage.shareIcon,
                      text: 'شارك مع الاصدقاء',
                      onPressed: () {
                        CustomOpenBottomSheet.openBottomSheet(context, ShareAppDottomSheet());
                      }),
                  ProfileListViewItem(
                      imageName: AssetsImage.privacyIcon,
                      text: 'سياسات الخصوصية ',
                      onPressed: () {}),
                  ProfileListViewItem(
                      imageName: AssetsImage.termsIcon,
                      text: 'الشروط والاحكام',
                      onPressed: () {}),
                  ProfileListViewItem(
                      imageName: AssetsImage.settingIcon,
                      text: 'الاعدادات',
                      onPressed: () {}),
                  SizedBox(
                    height: 24,
                  ),
                  CustomElevatedButtonRowIconText(
                      text: 'تسجيل خروج',
                      imageName: AssetsImage.logoutIcon,
                      onPressed: () {
                        CustomDialog.customShowDialogFunction(
                            context,
                            'من المؤسف رويتك تغادر تطبيقنا بشكل نهائي و نتمنا ان تتراجع عن قرارك في اسرع وقت ممكن مع العلم انهو سيتم حذف حسابك بعد مرور 28 يوم على مغادرتك وفي حال تراجعت عن قرارك قبل نهاية المدة قم فقط  بتسجيل الدخول وسوفا يلغا الطلب تلقائيا وشكرا لك',
                            AssetsImage.deleteUser,
                            text1: 'خروج نهائي',
                            text2: 'تراجع',
                            maxline: 5,
                            fontWeight: FontWeight.w400);
                      }),
                  SizedBox(
                    height: 11,
                  ),
                  CustomTextButton(
                    text: 'حذف الحساب',
                    onPressed: () {
                      CustomDialog.customShowDialogFunction(
                          context,
                          'هل انت متأكد من انك تريد تسجيل الخروج ؟',
                          AssetsImage.logoutIcon);
                    },
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
