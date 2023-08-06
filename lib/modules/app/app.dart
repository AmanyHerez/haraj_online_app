import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:haraj_app/modules/profile/profile_screen.dart';
import 'package:haraj_app/modules/splash/splash_screen.dart';
import 'package:haraj_app/route/routes.dart';
import '../../shared/assets_manager.dart';
import '../../shared/components/custom_textformfiled.dart';

import '../../test_stack_bg_image.dart';
import '../../testing_screen.dart';
import '../favorite/favorite_screen.dart';
import '../filter/filter_screen.dart';
import '../home/bn_screen.dart';
import '../home/home_screen.dart';
import '../product/details_ads_car_screen.dart';
import '../product/gallery_page/gallery_page.dart';
import '../product/gallery_page/widget/ads_gallery_widget.dart';
import '../product/gallery_page/widget/empty_gallery_image_widget.dart';
import '../product/gallery_page/widget/gallery_image_widget.dart';
import '../profile/edit_profile/edit_profile_screen.dart';
import '../profile/offers_submitted/offers_submitted_screen.dart';
import '../profile/setting/chage_email.dart';
import '../profile/setting/otp_after_write_screen.dart';
import '../profile/setting/otp_screen_first.dart';
import '../profile/setting/setting_screen.dart';

import '../search/result_search/result_search_screen.dart';
import '../search/search_list_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
     routes: AppRoutes.getPageRoutes(context),


     home: SplashScreen(),

    );
  }
}
