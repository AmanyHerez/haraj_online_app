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
            Stack(
              children: [
                CustomSvgImage(imageName: AssetsImage.backgroundMid,width: MediaQuery.sizeOf(context).width,),
                Column(
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
                                  imageName: AssetsImage.notificate,
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              Positioned(
                                  top: 8,
                                  right: 8,
                                  child: CircleAvatar(
                                    backgroundColor: AppColor.error,
                                    radius: 5,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 180,
                          // aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: true,


                        ),
                        items: imageSliders,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      childAspectRatio: 0.52,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, AppRoutes.DETAILS_ADS_CAR);
                        },
                          child: AdsItemWidget());
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
'https://media.istockphoto.com/id/176667558/photo/sport-car.jpg?s=612x612&w=0&k=20&c=3ie9FXvDFfAYVEFYUpV_1FWdiF9jRU8VlDuW2H32eng=',
'https://media.istockphoto.com/id/176667558/photo/sport-car.jpg?s=612x612&w=0&k=20&c=3ie9FXvDFfAYVEFYUpV_1FWdiF9jRU8VlDuW2H32eng=',
'https://media.istockphoto.com/id/176667558/photo/sport-car.jpg?s=612x612&w=0&k=20&c=3ie9FXvDFfAYVEFYUpV_1FWdiF9jRU8VlDuW2H32eng=',
];
// final List<String> imgList = [
//   'assets/images/${AssetsImage.Slider}.png',
//   'assets/images/${AssetsImage.Slider}.png',
//   'assets/images/${AssetsImage.Slider}.png',
// ];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
      clipBehavior: Clip.antiAlias,
      // margin: EdgeInsets.all(5.0),
width: 600,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(12),
      ),
      child:   Image.network(item, fit: BoxFit.cover, ),
    ))
    .toList();

// final List<Widget> imageSliders = imgList
//     .map((item) => Container(
//           child: Container(
//             margin: EdgeInsets.all(5.0),
//             child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                 child: Stack(
//                   children: <Widget>[
//                     Image.asset(item, fit: BoxFit.cover, width: 1000.0),
//                   ],
//                 )),
//           ),
//         ))
//     .toList();

