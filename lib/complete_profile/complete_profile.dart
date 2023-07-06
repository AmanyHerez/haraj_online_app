import 'package:flutter/material.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../shared/assets_manager.dart';
import '../shared/components/custom_elevated_button.dart';
import '../shared/components/custom_textformfiled.dart';
import '../shared/components/custome_image.dart';
import '../shared/font_manager.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('اكمل ملفك الشخصي',style: TextStyle(color: AppColor.black,fontFamily: FontConstants.fontFamily),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.close,
          color: AppColor.error,
        ),

      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Container(
                width: double.infinity,
                height: 540,
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
                      SizedBox(
                        height: 80,
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
                              height: 84,
                              width: 64,
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
                        height: 30,
                      ),
                      CustomTextFomField(
                        title: '  الاسم',
                        iconNamePuffix: AssetsImage.userIcon,

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextFomField(
                        title: ' رقم الهاتف +971 ',
                        iconNamePuffix: AssetsImage.phoneIcon,


                      ),
                      SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      CustomElevatedButton(text: 'حفظ', onPressed: () {}),
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
