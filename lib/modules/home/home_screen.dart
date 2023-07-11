import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:haraj_app/shared/widget/ads_item_widget.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../route/routes.dart';
import '../../shared/components/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
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
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.pushNamed(context, AppRoutes.FILTER);
                          },
                          child: CustomSvgImage(
                            imageName: AssetsImage.filterIcon,
                            width: 18,
                            height: 18,
                          ),
                        ),
                        Spacer(),
                        CustomText(text: 'أهلاً وسهلاً بك ',fontSize: 16,fontWeight: FontWeight.w800,),
                        Spacer(),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomSvgImage(
                                imageName: AssetsImage.notificateIcon,
                                width: 25,
                                height: 25,
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: CircleAvatar(
                                  backgroundColor: AppColor.primary,
                                  radius: 5,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                      ),
                      items: imageSliders,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text:'الاعلانات',fontWeight: FontWeight.w500,fontSize: 16,),

                  SizedBox(height: 8,),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.58,
                    ),
                    itemBuilder: (context, index) {
                      return AdsItemWidget();
                    },
                    itemCount: 6,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



final List<String> imgList = [
  'assets/images/${AssetsImage.Slider}.png',
  'assets/images/${AssetsImage.Slider}.png',
  'assets/images/${AssetsImage.Slider}.png',
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  ],
                )),
          ),
        ))
    .toList();
// Widget AdsWidget() {
//   return Container(
//     width: 160,
//     height: 280,
//     decoration: BoxDecoration(
//       color: AppColor.white,
//       borderRadius: BorderRadius.circular(6),
//       border: Border.all(color: AppColor.grey),
//     ),
//     child: Column(
//
//       children: [
//         Container(
//           width: 160,
//           height: 130,
//
//           child: Stack(
//             children: [
//               CustomPngImage(
//                 imageName: AssetsImage.Slider,
//                 width: 160,
//                 height: 130,
//               )
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'توسان اكسنت 2023',
//                 style: TextStyle(fontFamily: FontConstants.fontFamily),
//               ),
//               Row(children: [
//                 Text(
//                   'الحالة :',
//                   style: TextStyle(color: AppColor.grey),
//                 ),
//                 Text(
//                   'ممتاز',
//                   style: TextStyle(color: AppColor.green),
//                 ),
//               ]),
//               RichText(
//                 text: TextSpan(
//                     text: '50000',
//                     style: TextStyle(color: AppColor.black, fontSize: 18),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: ' درهم',
//                         style: TextStyle(
//                           color: AppColor.grey,
//                         ),
//                       )
//                     ]),
//               ),
//               Divider(
//                   height: 1,
//                   color: AppColor.dividerGreyColor,
//                   thickness: 1,
//                   endIndent: 4,
//                   indent: 4),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Container(
//                     width: 32,
//                     height: 32,
//                     padding: EdgeInsets.all(5),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25),
//                       color: AppColor.grey,
//                     ),
//                     child: CustomSvgImage(
//                       imageName: AssetsImage.OBJECTS,
//                       width: 21,
//                       height: 21,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text("معرض النور للبيع "),
//                 ],
//               ),
//             ],
//           ),
//         )
//       ],
//     ),
//   );
// }
