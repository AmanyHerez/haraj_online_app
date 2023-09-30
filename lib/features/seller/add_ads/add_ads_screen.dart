import 'package:flutter/material.dart';
import 'package:haraj_app/features/seller/add_ads/widget/add_images.dart';
import 'package:haraj_app/features/seller/add_ads/widget/car_choose_info.dart';
import 'package:haraj_app/features/seller/add_ads/widget/car_details.dart';
import 'package:haraj_app/features/seller/add_ads/widget/car_features.dart';
import 'package:haraj_app/features/seller/add_ads/widget/page_view_indicator.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/style/color_manager.dart';

class SellerAddAdScreen extends StatefulWidget {
  const SellerAddAdScreen({super.key});

  @override
  State<SellerAddAdScreen> createState() => _SellerAddAdScreenState();
}

class _SellerAddAdScreenState extends State<SellerAddAdScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Stack(
            children: [
              CustomSvgImage(
                imageName: AssetsImage.tabBarbackground,
                width: MediaQuery.sizeOf(context).width,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: CustomSvgImage(
                            imageName: AssetsImage.arrowIcon,
                            width: 8,
                            height: 13,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        CustomText(
                          text: 'أضافة اعلان ',
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border:
                    Border.all(color: AppColor.containerBorderColor, width: .5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 28,
                  ),
                  CircleAvatar(
                      radius: 55,
                      backgroundColor: AppColor.lightGrey,
                      child: CustomSvgImage(
                        imageName: AssetsImage.car_ads,
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      )),
                  SizedBox(height: 24),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 23),
                      child: CustomText(
                        text:
                            'قم بإدخال البيانات الأساسية لسيارة  حتى تتمكن من انشاء الاعلان',
                        fontWeight: FontWeight.w300,
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PageViewIndicator(
                        isCurrentPage: _currentPage == 0,
                        marginEnd: 4,
                      ),
                      PageViewIndicator(
                        isCurrentPage: _currentPage == 1,
                        marginEnd: 4,
                      ),
                      PageViewIndicator(
                        isCurrentPage: _currentPage == 2,
                        marginEnd: 4,
                      ),
                      PageViewIndicator(
                        isCurrentPage: _currentPage == 3,
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      // physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (int currentPage) {
                        setState(() => _currentPage = currentPage);
                      },
                      children: const [
                        CarDetails(),
                        CarInfo(),
                        CarFeatures(),
                        AddCarImages(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
