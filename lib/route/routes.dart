import 'package:flutter/material.dart';
import 'package:haraj_app/modules/chat/chat_screen.dart';
import 'package:haraj_app/modules/favorite/favorite_screen.dart';
import 'package:haraj_app/modules/filter/filter_screen.dart';
import 'package:haraj_app/modules/home/home_screen.dart';
import 'package:haraj_app/modules/profile/profile_screen.dart';
import 'package:haraj_app/modules/search/search_screen.dart';

import '../modules/login/login_screen.dart';
import '../modules/profile/edit_profile/edit_profile_screen.dart';
import '../modules/profile/offers_submitted/offers_submitted_screen.dart';
import '../modules/register/register_screen.dart';
import '../modules/splash/splash_screen.dart';
class AppRoutes {
  static const String SPLASH = '/';
  static const String LOGIN = '/login';
  static const String REGISTER = '/register';
  static const String HOME = '/home';
  static const String CHAT = '/chat';
  static const String SEARCH = '/search';
  static const String FILTER = '/filter';
  static const String  PROFILE = '/profile';
  static const String EDITPROFILE  = '/edit_profile';
  static const String FAVORITE  = '/favorite';
  static const String OFFER_SUBMITTED  = '/offer_submitted';


  static Map<String, Widget Function(BuildContext)> getPageRoutes(context) {
    return {
      // AppRoutes.SPLASH: (context) => SplashScreen(),
      AppRoutes.LOGIN: (context) => LoginScreen(),
      AppRoutes.REGISTER: (context) => RegisterScreen(),
      AppRoutes.HOME: (context) => HomeScreen(),
      AppRoutes.FILTER: (context) => FilterScreen(),
      AppRoutes.CHAT: (context) => ChatScreen(),
      AppRoutes.SEARCH: (context) => SearchScreen(),
      AppRoutes.PROFILE: (context) => ProfileScreen(),
      AppRoutes.EDITPROFILE: (context) => EditProfileScreen(),
      AppRoutes.FAVORITE: (context) => FavoriteScreen(),
      AppRoutes.OFFER_SUBMITTED: (context) => OffersSubmittedScreen(),


    };
  }
}
