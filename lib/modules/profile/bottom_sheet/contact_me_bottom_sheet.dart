import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/components/custome_image.dart';

import '../../../shared/components/custom_divider.dart';
import '../../../shared/style/color_manager.dart';

class ContactMeBottomSheet extends StatelessWidget {
  const ContactMeBottomSheet({Key? key}) : super(key: key);

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
                margin: EdgeInsets.all(10),
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
                text: 'تواصل معنا',
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomeDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text:
                        'يمكنك التواصل مع الدعم الفني وتقديم الشكاوى والمقترحات  من خلال حساباتنا على السوشل ميديا',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 54,),
                  Row(
                    children: [
                      SocialItem(AppColor.blue,AssetsImage.twiterIcon,AppColor.white),
                      SocialItem(AppColor.greenWhatsup,AssetsImage.whatsappIcon,AppColor.white),
                      SocialItem(AppColor.pink,AssetsImage.instagramIcon,AppColor.white),
                      SocialItem(AppColor.colorfacebook,AssetsImage.facebookIcon,AppColor.white),
                      SocialItem(AppColor.blue,AssetsImage.twiterIcon,AppColor.white),



                    ],
                  ),
                  SizedBox(height: 54,),
                  CustomText(
                    text:
                  'يتم الرد على استفساراتكم عبر منصات التواصل الاجتماعي في مواعيد العمل الرسمية بمعدل رد اقل من ساعة ' ,
                    maxLines: 2,
                    fontWeight: FontWeight.w300,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40,),
                  CustomText(text: 'يمكنكم التواصل في اي وقت',color: AppColor.primary,fontWeight: FontWeight.w500,),
                  SizedBox(height: 40,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget SocialItem(Color color,String imageName,Color? colorImage){
  return Container(
    width: 58,
    height: 58,
    margin: EdgeInsets.only(left: 13),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: color,
    ),
    child: CustomSvgImage(imageName: imageName,),
  );
}
