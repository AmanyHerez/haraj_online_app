import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:haraj_app/app/test_register/cubit/login_cubit/login_cubit.dart';
import 'package:haraj_app/app/test_register/cubit/register_cubit/register_cubit.dart';
import 'package:haraj_app/app/test_register/cubit/verify_cubit/verify_cubit.dart';
import 'package:haraj_app/app/test_register/cubit/auth_cubit/auth_cubit.dart';
import 'package:haraj_app/modules/auth/login/view_model/login_cubit/login_cubit.dart';

import 'package:haraj_app/modules/profile/profile_screen.dart';
import 'package:haraj_app/modules/splash/splash_screen.dart';
import 'package:haraj_app/route/routes.dart';
import '../../chat_seller/chat_seller_screen.dart';
import '../../chat_seller/home_chat_seller.dart';
import '../../chat_seller/messaging_seller_screen.dart';
import '../../shared/assets_manager.dart';
import '../../shared/components/custom_textformfiled.dart';

import '../../test_stack_bg_image.dart';
import '../../testing_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (BuildContext context) => AuthCubit(),
        ),
        BlocProvider<LoginCubit>(
          create: (BuildContext context) => LoginCubit(),
        ),
        BlocProvider<RegisterCubit>(
          create: (BuildContext context) => RegisterCubit(),
        ),
        BlocProvider<VerifyCubit>(
          create: (BuildContext context) => VerifyCubit(),
        ),

      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routes: AppRoutes.getPageRoutes(context),


        home: SplashScreen(),

      ),
    );
  }
}




// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//
//       debugShowCheckedModeBanner: false,
// home: HomeChatSellerScreen(),
//       // initialRoute: RoutesManager.loginScreen,
//       // getPages: getPages,
//
//     );
//   }
// }