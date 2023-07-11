import 'package:flutter/material.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_elevated_button.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custom_textformfiled.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/style/color_manager.dart';
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Container(
                width: double.infinity,
                height: 580,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/${AssetsImage.background}.png",
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                       Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: InkWell(
                              onTap: (){
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
                          CustomText(text:'تعديل الملف الشخصي',fontSize: 16,fontWeight: FontWeight.w800,),
                          Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 100,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColor.white,
                            ),
                            child: CustomSvgImage(
                              imageName: AssetsImage.user,
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Positioned(
                            top: 74,
                            left: 72,
                            child: Container(
                              width: 26,
                              height: 26,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: CustomSvgImage(
                                imageName: AssetsImage.cameraIcon,
                                width: 13,
                                height: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      CustomTextFomField(
                        title: '  الاسم',
                        iconNamePuffix: AssetsImage.userIcon,

                      ),
                      SizedBox(
                        height: 24,
                      ),
                      CustomTextFomField(
                        title: ' رقم الهاتف +971 ',
                        iconNamePuffix: AssetsImage.phoneIcon,


                      ),
                      SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        height: 26,
                      ),
                      CustomElevatedButton(text: 'حفظ التغيرات', onPressed: () {},bgColor: AppColor.primary),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
