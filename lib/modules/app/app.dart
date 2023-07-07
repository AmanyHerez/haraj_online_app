import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:haraj_app/modules/login/login_screen.dart';
import 'package:haraj_app/modules/splash/splash_screen.dart';
import '../../shared/assets_manager.dart';
import '../../shared/components/custom_textformfiled.dart';
import '../filter/filter_screen.dart';
import '../home/bn_screen.dart';
import '../product/details_ads_car_screen.dart';
import '../register/register_screen.dart';
import '../type_account/type_account_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

    home: DetailsAdsCarScreen(),
    );
  }
}
