import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'اهلا و سهلا بك ',
          style: TextStyle(color: AppColor.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CustomSvgImage(
            imageName: AssetsImage.filterIcon,
            width: 18,
            height: 18,
          ),
        ),
        actions: [
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
          )
        ],
      ),
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
                    height: 80,
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
                  Text('الاعلانات',style: TextStyle(fontFamily: FontConstants.fontFamily,fontSize: 18),),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.609,
                    ),
                    itemBuilder: (context, index) {
                      return AdsWidget();
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

Widget AdsWidget() {
  return Container(
    height: 280,
    decoration: BoxDecoration(
      color: AppColor.white,
      borderRadius: BorderRadius.circular(6),
      border: Border.all(color: AppColor.grey),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 180,
          height: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/${AssetsImage.car}.png",
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 28,
                height: 28,

                  margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColor.white,
                ),
                child: Icon(Icons.favorite_border,color: AppColor.grey,),
              ),
              Container(
                width: 66,
                height: 27,
                margin: EdgeInsets.all(6),
               padding:EdgeInsets.symmetric(horizontal: 2) ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColor.white,
                ),
                child: Row(
                  children: [
                    CustomSvgImage(imageName: AssetsImage.locationIcon,width: 10,height: 14,),
                    SizedBox(width: 10,),
                    Text('ابو دبي'),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'توسان اكسنت 2023',
                style: TextStyle(fontFamily: FontConstants.fontFamily),
              ),
              Row(children: [
                Text(
                  'الحالة :',
                  style: TextStyle(color: AppColor.grey),
                ),
                Text(
                  'ممتاز',
                  style: TextStyle(color: AppColor.green),
                ),
              ]),
              RichText(
                text: TextSpan(
                    text: '50000',
                    style: TextStyle(color: AppColor.black, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' درهم',
                        style: TextStyle(
                          color: AppColor.grey,
                        ),
                      )
                    ]),
              ),
              Divider(
                  height: 1,
                  color: AppColor.dividerGreyColor,
                  thickness: 1,
                  endIndent: 4,
                  indent: 4),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColor.grey,
                    ),
                    child: CustomSvgImage(
                      imageName: AssetsImage.OBJECTS,
                      width: 21,
                      height: 21,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("معرض النور للبيع "),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
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
